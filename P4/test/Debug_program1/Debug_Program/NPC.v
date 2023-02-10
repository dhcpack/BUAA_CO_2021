`timescale 1ns/1ps

module NPC (
    input  wire [31:0] pc,
    input  wire [31:0] bimm,
    input  wire zero,
    input  wire [25:0] jimm,
    input  wire [31:0] ra,
    input  wire [1:0] npcop,
    output wire [31:0] pc4,
    output wire [31:0] npc
);

    wire[31:0] pcbimm,pcjimm;

    assign pc4 = pc + 32'd4;
    assign pcbimm = (zero == 1) ? (pc + 4 + bimm) : pc4;
    assign pcjimm = {pc[31:28],jimm,2'b0};

    assign npc = (npcop == 2'd0) ? pc4 :  // pc + 4
                (npcop == 2'd1) ? pcbimm :  // B÷∏¡Ó
                (npcop == 2'd2) ? pcjimm :  // J jal÷∏¡Ó
                ra;  // jr jalr÷∏¡Ó

endmodule //NPC