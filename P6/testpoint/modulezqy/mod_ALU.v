// Arithmetic Logic Unit

`define cALUOp_nop  0
`define cALUOp_add  1
`define cALUOp_sub  2
`define cALUOp_sll  3
`define cALUOp_sllv 4
`define cALUOp_srl  5
`define cALUOp_srlv 6
`define cALUOp_sra  7
`define cALUOp_srav 8
`define cALUOp_and  9
`define cALUOp_or   10
`define cALUOp_nor  11
`define cALUOp_xor  12
`define cALUOp_slt  13
`define cALUOp_num2 14
`define cALUOp_dedbeaf 15

module mod_ALU(
    input  [31:0] iNumber1,
    input  [31:0] iNumber2,
    input   [4:0] iShamt,
    input   [3:0] iALUOp,
    input         iALUUnsigned,
    output reg [31:0] oResult
);

    wire  [4:0] vShamt = iNumber1[4:0];
    // wire [31:0] iSraDiv = 1 << iShamt;
    // wire [31:0] vSraDiv = 1 << vShamt;

    wire [32:0] uiNum1 = {1'b0, iNumber1};
    wire [32:0] uiNum2 = {1'b0, iNumber2};


    always @(*)
    case (iALUOp)
    `cALUOp_add : oResult <= iNumber1 + iNumber2;
    `cALUOp_sub : oResult <= iNumber1 - iNumber2;
    `cALUOp_sll : oResult <= iNumber2 << iShamt;
    `cALUOp_sllv: oResult <= iNumber2 << vShamt;
    `cALUOp_srl : oResult <= iNumber2 >> iShamt;
    `cALUOp_srlv: oResult <= iNumber2 >> vShamt;
    `cALUOp_sra : oResult <= $signed($signed(iNumber2) >>> iShamt);
    `cALUOp_srav: oResult <= $signed($signed(iNumber2) >>> vShamt);
    `cALUOp_and : oResult <=   iNumber1 & iNumber2;
    `cALUOp_or  : oResult <=   iNumber1 | iNumber2;
    `cALUOp_nor : oResult <= ~(iNumber1 | iNumber2);
    `cALUOp_xor : oResult <=   iNumber1 ^ iNumber2;
    `cALUOp_slt : begin
        if (iALUUnsigned)
            oResult <= $unsigned($unsigned(uiNum1) < $unsigned(uiNum2)) ? 32'b1 : 32'b0;
        else
            oResult <= $signed($signed(iNumber1) < $signed(iNumber2)) ? 32'b1 : 32'b0;
    end
    `cALUOp_num2: oResult <= iNumber2;
    default: oResult <= 32'hDEADBEEF;
    endcase
endmodule
