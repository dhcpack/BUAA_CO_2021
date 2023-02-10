// Splitter - Split fields of instruction

module mod_Splitter(
    input  [31:0] instruction,
    output  [5:0] opcode,
    output  [4:0] rs,
    output  [4:0] rt,
    output  [4:0] rd,
    output  [4:0] shamt,
    output  [5:0] funct,
    output [15:0] imm16,
    output [25:0] imm26
);
    assign { opcode, rs, rt, rd, shamt, funct } = instruction;
    assign imm16 = instruction[15:0];
    assign imm26 = instruction[25:0];
endmodule
