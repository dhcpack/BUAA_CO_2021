// CoProcessor 0, Exception Handler

`define pException_None 0
`define pException_AdEL 4
`define pException_AdES 5
`define pException_RI   10
`define pException_Ov   12

`define cp0_sr       12
`define cp0_cause    13
`define cp0_epc      14
`define cp0_prid     15

`define cp0_hndl      0
`define cp0_test      1

module mod_CP0(input clk, input reset,
    input        iRegWE,
    input  [4:0] iRegNum,
    input [31:0] iRegWData, output [31:0] oRegData,

    input iMIsBDS,
    input iMIsERET,
    input [31:0] iMPC,
    input  [7:0] iMException,

    input [31:0] iWPC,

    output oWillJump, output [31:0] oJumpAddr,
    output oClearPPL,

    input [7:0] iExternalInterrupt,

    output oResponseToExtInterrupt
);

    // Effective
    reg         r_IntEn;    // Interrupt Enable
    reg         r_ExLevel;  // Exception Level
    reg   [7:0] r_IntMask;  // Interrupt Mask

    reg   [7:0] r_IntPrsn;  // Interrupt Present
    reg   [7:0] r_ExcCode;  // Exception Code
    reg         r_BrnDely;  // Whether Branch Delay

    reg  [31:0] r_EPC;
    reg  [31:0] r_HandlerAddr;
    reg  [31:0] r_TestValue;

    // New but not Effective
    reg       rx_IntEn;
    reg       rx_ExLevel;
    reg [7:0] rx_IntMask;
        wire [31:0] wx_SRValue = {16'b0, rx_IntMask[7:2], 2'b00, rx_ExLevel, rx_IntEn};
    reg [7:0] rx_IntPrsn;
    reg [7:0] rx_ExcCode;
    reg       rx_BrnDely;
        wire [31:0] wx_CauseValue = {
            rx_BrnDely, 15'b0,
            rx_IntPrsn[7:2], 2'b00,
            1'b0, rx_ExcCode[4:0], 2'b00 };
    reg [31:0] rx_EPC;
    reg [31:0] rx_HandlerAddr;
    reg [31:0] rx_TestValue;



    // Read New
    assign oRegData =
        iRegNum == `cp0_sr      ? wx_SRValue :
        iRegNum == `cp0_cause   ? wx_CauseValue :
        iRegNum == `cp0_epc     ? rx_EPC :
        iRegNum == `cp0_prid    ? "MIPS" :
        iRegNum == `cp0_test    ? rx_TestValue :
            32'b0;

    // Calculate use Effective
    wire w_ResponseToInterrupt =
        ((iExternalInterrupt & r_IntMask) && r_IntEn && !r_ExLevel);
    assign oResponseToExtInterrupt =
        (iExternalInterrupt[4] & r_IntMask[4]) && r_IntEn && !r_ExLevel;
    assign oWillJump =
        (iMException && !r_ExLevel) ||  // Exception
        w_ResponseToInterrupt       ||  // Interrupt
        iMIsERET;
    assign oJumpAddr = iMIsERET ? r_EPC : r_HandlerAddr;
    assign oClearPPL = oWillJump;

    wire w_RevertSYNC = (iMException && !r_ExLevel) || w_ResponseToInterrupt; // Revert When Handle Exception but not ERET

    always @(posedge clk) begin
        // if (iExternalInterrupt)
        //    $display("%d@CP0: EXI = %b MASK = %b EXL = %b", $time, iExternalInterrupt, r_IntMask, r_ExLevel);
        if (reset) begin
            r_IntEn <= 0; r_ExLevel <= 0; r_IntMask <= 0;
            r_IntPrsn <= 0; r_ExcCode <= 0; r_BrnDely <= 0;
            r_EPC <= 0;
            r_HandlerAddr <= 32'h4180;
            r_TestValue <= 0;

            rx_IntEn <= 0; rx_ExLevel <= 0; rx_IntMask <= 0;
            rx_IntPrsn <= 0; rx_ExcCode <= 0; rx_BrnDely <= 0;
            rx_EPC <= 0;
            rx_HandlerAddr <= 32'h4180;
            rx_TestValue <= 0;
        end else begin
            // Writing Registers - to NEW
            if (!oClearPPL) begin
                if (iRegWE) begin
                    case (iRegNum)
                    `cp0_sr:    begin
                        {rx_IntMask[7:2], rx_ExLevel, rx_IntEn} <= {iRegWData[15:10], iRegWData[1], iRegWData[0]};
                        // $display("  %d@CP0 DEBUG: NEW SR IntMask = %b ExLevel = %b IntEn = %b", $time, iRegWData[15:10], iRegWData[1], iRegWData[0]);
                    end
                    `cp0_cause: begin
                        {rx_BrnDely, rx_IntPrsn[7:2], rx_ExcCode[4:0]} <= {iRegWData[31], iRegWData[15:10], iRegWData[6:2]};
                        // $display("  %d@CP0 DEBUG: NEW CAUSE", $time);
                    end
                    `cp0_epc:    begin
                        rx_EPC <= iRegWData;
                        // $display("  %d@CP0 DEBUG: NEW EPC = %h", $time, iRegWData);
                    end
                    `cp0_hndl: begin
                        rx_HandlerAddr <= iRegWData;
                        // $display("  %d@CP0 DEBUG: NEW Set Handler Address %h", $time, iRegWData);
                    end
                    `cp0_test: begin
                        // rx_TestValue <= iRegWData;
                        // $display("  %d@CP0 DEBUG: WRITE Test %h !", $time, iRegWData);
                    end
                    endcase
                end
            end
            // ALLOW: New -> Eff, DISALLOW: Exc -> Eff -> New
            // Interrupt and Exceptions
            if (w_RevertSYNC) begin // REVERT: Exc -> Eff(r) -> New(rx), ERET will not take this
                if (iMException) begin
                    r_ExLevel <= 1;
                        rx_ExLevel <= 1;
                    r_ExcCode <= iMException;
                        rx_ExcCode <= iMException;
                    r_IntPrsn <= 0; // ? Should We Write This ?
                        rx_IntPrsn <= 0;
                    if (iMIsBDS) begin r_EPC <= iMPC - 4; rx_EPC <= iMPC - 4; end
                        else     begin r_EPC <= iMPC;     rx_EPC <= iMPC;     end
                    r_BrnDely <= iMIsBDS;
                        rx_BrnDely <= iMIsBDS;
                end
                if ((iExternalInterrupt & r_IntMask) && r_IntEn) begin
                    r_ExLevel <= 1;
                        rx_ExLevel <= 1;
                    r_ExcCode <= 0; // Means External Interrupt
                        rx_ExcCode <= 0;
                    r_IntPrsn <= iExternalInterrupt;
                        rx_IntPrsn <= iExternalInterrupt;
                    if (iMIsBDS) begin r_EPC <= iMPC - 4; rx_EPC <= iMPC - 4; end
                        else     begin r_EPC <= iMPC;     rx_EPC <= iMPC;     end
                    r_BrnDely <= iMIsBDS;
                        rx_BrnDely <= iMIsBDS;
                end
                rx_IntEn <= r_IntEn;
                rx_IntMask <= r_IntMask;
                rx_HandlerAddr <= r_HandlerAddr;
                rx_TestValue   <= r_TestValue;
                // $display("  %d@CP0 Exc -> Eff -> New", $time);
            end else begin
                // SHOULD WE READ IntPresent Here ?
                r_IntEn <= rx_IntEn;
                r_ExLevel <= rx_ExLevel;
                r_IntMask <= rx_IntMask;
                r_IntPrsn <= rx_IntPrsn;
                r_ExcCode <= rx_ExcCode;
                r_BrnDely <= rx_BrnDely;
                r_EPC <= rx_EPC;
                r_HandlerAddr <= rx_HandlerAddr;
                r_TestValue <= rx_TestValue;
                // $display("  %d@CP0 New -> Eff", $time);
            end
            if (iMIsERET) begin
                r_ExLevel  <= 0;
                rx_ExLevel <= 0;
                // $display("ERET !");
            end
            // END
        end
    end

endmodule
