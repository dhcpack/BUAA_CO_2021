// Arithmetic Logic Unit

`define cALUOp_add 0
`define cALUOp_sub 1
`define cALUOp_or  2
`define cALUOp_and 3
`define cALUOp_n2  4

module mod_ALU(
    input  [31:0] iNumber1,
    input  [31:0] iNumber2,
    input   [4:0] iShamt,
    input   [3:0] iALUOp,
    output reg [31:0] oResult,
    output            oResultZero
);
    assign oResultZero = oResult == 0;
    always @(*) begin
        case (iALUOp)
        `cALUOp_add: oResult <= iNumber1 + iNumber2;
        `cALUOp_sub: oResult <= iNumber1 - iNumber2;
        `cALUOp_or : oResult <= iNumber1 | iNumber2;
        `cALUOp_and: oResult <= iNumber1 & iNumber2;
        `cALUOp_n2 : oResult <= iNumber2;
        default: oResult <= 0;
        endcase
    end
endmodule
