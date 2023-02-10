// Multiply and Division

`define cMDOp_nop   0
`define cMDOp_mult  1
`define cMDOp_multu 2
`define cMDOp_div   3
`define cMDOp_divu  4
`define cMDOp_mthi  5
`define cMDOp_mtlo  6

`define cMD_BUSY5  5
`define cMD_BUSY10 10

module mod_MultDiv(
    input clk, input reset,
    input  [3:0] iMDOp,
    input [31:0] iNum1,
    input [31:0] iNum2,
    output reg [31:0] oHi,
    output reg [31:0] oLo,
    output oStart, output reg oBusy,

    input iClearPPL
);
    reg  [4:0] rBusyCounter;
    reg [31:0] r_prevHi;
    reg [31:0] r_prevLo;

    assign oStart =
        (iMDOp != `cMDOp_nop) && (iMDOp != `cMDOp_mthi) && (iMDOp != `cMDOp_mtlo);

    reg r_JustWrite;
    wire w_RevertSYNC = r_JustWrite && iClearPPL;

    // should set busy by hand
    always @(posedge clk) begin
        if (reset) begin
            oHi <= 0; r_prevHi <= 0;
            oLo <= 0; r_prevLo <= 0;
            rBusyCounter <= 0; oBusy <= 0;
            r_JustWrite  <= 0;
        end else begin
            r_JustWrite <= 0; // Zero for MFHI, MFLO
            if (rBusyCounter > 0) begin
                if (rBusyCounter == 1)
                    oBusy <= 0;
                rBusyCounter <= rBusyCounter - 1;
            end else begin
                if (oStart) oBusy <= 1;
                case (iMDOp)
                `cMDOp_mult: begin
                    r_JustWrite  <= 1;
                    rBusyCounter <= `cMD_BUSY5;
                    {oHi, oLo}   <= $signed(iNum1) * $signed(iNum2);
                    // $display("%d@MultDiv mult %h %h", $time, iNum1, iNum2);
                end
                `cMDOp_multu: begin
                    r_JustWrite  <= 1;
                    rBusyCounter <= `cMD_BUSY5;
                    {oHi, oLo}   <= $unsigned(iNum1) * $unsigned(iNum2);
                    // $display("%d@MultDiv multu %h %h", $time, iNum1, iNum2);
                end
                `cMDOp_div: begin
                    r_JustWrite  <= 1;
                    rBusyCounter <= `cMD_BUSY10;
                    if (iNum2 == 0) begin
                        oLo <= 0;
                        oHi <= 0;
                    end else begin
                        oLo <= $signed(iNum1) / $signed(iNum2);
                        oHi <= $signed(iNum1) % $signed(iNum2);
                    end
                    // $display("%d@MultDiv div %h %h", $time, iNum1, iNum2);
                end
                `cMDOp_divu: begin
                    r_JustWrite  <= 1;
                    rBusyCounter <= `cMD_BUSY10;
                    if (iNum2 == 0) begin
                        oLo <= 0;
                        oHi <= 0;
                    end else begin
                        oLo <= $unsigned(iNum1) / $unsigned(iNum2);
                        oHi <= $unsigned(iNum1) % $unsigned(iNum2);
                    end
                    // $display("%d@MultDiv divu %h %h", $time, iNum1, iNum2);
                end
                `cMDOp_mthi: begin
                    oHi <= iNum1;
                    r_JustWrite  <= 1;
                    // $display("%d@MultDiv hi <= %h", $time, iNum1);
                end
                `cMDOp_mtlo: begin
                    oLo <= iNum1;
                    r_JustWrite  <= 1;
                    // $display("%d@MultDiv lo <= %h", $time, iNum1);
                end
                endcase
            end

            if (w_RevertSYNC) begin
                // $display("        MultDiv: REVERT !");
                oHi <= r_prevHi;
                oLo <= r_prevLo;
                if (oBusy) begin
                    oBusy <= 0;
                    rBusyCounter <= 0;
                end
            end else begin
                r_prevHi <= oHi;
                r_prevLo <= oLo;
            end
        end
    end
endmodule
