`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:42:53 11/20/2021 
// Design Name: 
// Module Name:    NPC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module NPC(
    input equal,
    input [31:0] PC,
    output [31:0] NPC,
    input [31:0] NPCOp,
    input [25:0] Imm26,
    output [31:0] PC8,
    output [31:0] PC4,
    input [31:0] ra,
	 input [31:0] EPC,
	 input ERET_D,
	 input ERET_E,
	 input ERET_M,
	 input Req
    );

	assign PC4=PC+4;
	assign PC8=PC+8;

	assign NPC = (Req == 1 )  ? 32'h0000_4180:
					 (ERET_D==1)  ? EPC+4:
					 (NPCOp == 0) ? PC+4:
					 (NPCOp == 1) ? PC:
					 (NPCOp == 2 && equal ==1) ? PC+{{14{Imm26[15]}},Imm26[15:0],2'b00}://beq
					 (NPCOp == 2 && equal ==0) ? PC+4:
					 (NPCOp == 3) ? {PC[31:28],Imm26,2'b00}://jal
					 (NPCOp == 4) ? ra:
					 0;


endmodule
