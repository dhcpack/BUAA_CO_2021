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
    output oStart, output reg oBusy
);
    reg  [4:0] rBusyCounter;
    reg [31:0] rHi;
    reg [31:0] rLo;

    assign oStart =
        (iMDOp != `cMDOp_nop) && (iMDOp != `cMDOp_mthi) && (iMDOp != `cMDOp_mtlo);

    // should set busy by hand
    always @(posedge clk) begin
        if (reset) begin
            oHi <= 0; oLo <= 0;
            rHi <= 0; rLo <= 0;
            rBusyCounter  <= 0; oBusy <= 0;
        end else
        if (rBusyCounter > 0) begin
            if (rBusyCounter == 1) begin
                oBusy <= 0;
                oHi <= rHi; oLo <= rLo;
            end
            rBusyCounter <= rBusyCounter - 1;
        end else
        begin
            if (oStart) oBusy <= 1;
            case (iMDOp)
            `cMDOp_mult: begin
                rBusyCounter <= `cMD_BUSY5;
                {rHi, rLo}   <= $signed(iNum1) * $signed(iNum2);
                // $display("%d@MultDiv mult %h %h", $time, iNum1, iNum2);
            end
            `cMDOp_multu: begin
                rBusyCounter <= `cMD_BUSY5;
                {rHi, rLo}   <= $unsigned(iNum1) * $unsigned(iNum2);
                // $display("%d@MultDiv multu %h %h", $time, iNum1, iNum2);
            end
            `cMDOp_div: begin
                rBusyCounter <= `cMD_BUSY10;
                rLo <= $signed(iNum1) / $signed(iNum2);
                rHi <= $signed(iNum1) % $signed(iNum2);
                // $display("%d@MultDiv div %h %h", $time, iNum1, iNum2);
            end
            `cMDOp_divu: begin
                rBusyCounter <= `cMD_BUSY10;
                rLo <= $unsigned(iNum1) / $unsigned(iNum2);
                rHi <= $unsigned(iNum1) % $unsigned(iNum2);
                // $display("%d@MultDiv divu %h %h", $time, iNum1, iNum2);
            end
            `cMDOp_mthi: begin
                oHi <= iNum1;
                // $display("%d@MultDiv hi <= %h", $time, iNum1);
            end
            `cMDOp_mtlo: begin
                oLo <= iNum1;
                // $display("%d@MultDiv lo <= %h", $time, iNum1);
            end
            endcase
        end
    end
endmodule
