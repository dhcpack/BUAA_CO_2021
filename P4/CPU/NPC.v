`timescale 1ns/1ps

module NPC (
    input  wire [31:0] pc,
    input  wire [31:0] bimm,
    input  wire aequb,
	 input  wire agtb,
    input  wire [25:0] jimm,
    input  wire [31:0] ra,
    input  wire [4:0] npcop,
    output wire [31:0] pc4,
    output wire [31:0] npc
);

    wire[31:0] pcbeq, pcjimm, pcbgtz;

    assign pc4 = pc + 32'd4;
    assign pcbeq = (aequb == 1) ? (pc + 4 + bimm) : pc4;
    assign pcjimm = {pc[31:28],jimm,2'b0};
	 assign pcbgtz = (agtb == 1) ? (pc + 4 + bimm) : pc4;

    assign npc = (npcop == 4'd0) ? pc4 :  // pc + 4
                (npcop == 4'd1) ? pcbeq :  // Btype
                (npcop == 4'd2) ? pcjimm :  // J jal
                (npcop == 4'd3) ? ra :  // jr jalr
					 (npcop == 4'd4) ? pcbgtz :  // bgtz
					 32'h3000;

endmodule //NPC