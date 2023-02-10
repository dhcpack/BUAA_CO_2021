// MIPS System Bridge

module mips_bridge(input clk,
    input  [31:0] iCPUMAddr,    output [31:0] oCPUMRData,
    input  [31:0] iCPUMWData,
    input  [3 :0] iCPUMByteEn,  input [3:0] iCPURByteEn,

    output [31:0] oDMAddr,      input  [31:0] iDMRData,
    output [31:0] oDMWData,
    output  [3:0] oDMByteEn,

    output oCPUMemException,

    output oT0WE, output [31:2] oT0Addr, output [31:0] oT0WData,
    output oT1WE, output [31:2] oT1Addr, output [31:0] oT1WData,

    input [31:0] iT0RData,
    input [31:0] iT1RData,

    input iResponseToExtInterrupt
);

    wire w_AddrInDMRange = (32'h0000 <= iCPUMAddr && iCPUMAddr <= 32'h2ffc);
    wire w_AddrInT0Range = (32'h7f00 <= iCPUMAddr && iCPUMAddr <= 32'h7f08);
    wire w_AddrInT1Range = (32'h7f10 <= iCPUMAddr && iCPUMAddr <= 32'h7f18);

    assign oCPUMRData =
        w_AddrInDMRange ? iDMRData  :
        w_AddrInT0Range ? iT0RData :
        w_AddrInT1Range ? iT1RData :
            0;

    // External Interrupt
    reg r_RespAtClkNeg = 0;
    always @(posedge clk) begin
        r_RespAtClkNeg <= iResponseToExtInterrupt;
        if (iResponseToExtInterrupt) begin
            // $display("Bridge: response to external interrupt (tb)");
        end
    end
    // End

    assign oDMAddr   = r_RespAtClkNeg ? 32'h7f20 : (w_AddrInDMRange ? iCPUMAddr   : 0);
    assign oDMWData  = r_RespAtClkNeg ? 32'h0000 : (w_AddrInDMRange ? iCPUMWData  : 0);
    assign oDMByteEn = r_RespAtClkNeg ? 32'h1111 : (w_AddrInDMRange ? iCPUMByteEn : 0);

    wire [31:2] w_TimerAddr = {28'b0, iCPUMAddr[3:2]};
    wire w_TimerWE   = iCPUMByteEn != 0;
    wire w_TimerEx1  = iCPURByteEn != 0 && iCPURByteEn != 4'b1111; // Data Type
    wire w_TimerEx2  = w_TimerWE && w_TimerAddr >= 2;              // RO Target
    wire w_TimerExcp = w_TimerEx1 || w_TimerEx2;

    assign oT0WE    = w_AddrInT0Range && w_TimerWE && !w_TimerExcp;
    assign oT0Addr  = w_AddrInT0Range ?  w_TimerAddr : 0;
    assign oT0WData = iCPUMWData;

    assign oT1WE    = w_AddrInT1Range && w_TimerWE && !w_TimerExcp;
    assign oT1Addr  = w_AddrInT1Range ?  w_TimerAddr : 0;
    assign oT1WData = iCPUMWData;

    assign oCPUMemException =
        (!(w_AddrInDMRange || w_AddrInT0Range || w_AddrInT1Range)) // Out of Range
    ||  (w_AddrInT0Range && w_TimerExcp)
    ||  (w_AddrInT1Range && w_TimerExcp);
endmodule
