`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:29:59 11/20/2021 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] A,
    input [31:0] B,
    input [31:0] ALUOp,
    output [31:0] AO
    );
	
	assign AO=(ALUOp==0) ? A&B:
				 (ALUOp==1) ? A|B:
				 (ALUOp==2) ? A+B:
				 (ALUOp==3) ? A-B:
				 (ALUOp==4) ? A^B:
				 (ALUOp==5) ? (B<<A[4:0]):
				 (ALUOp==6) ? $signed($signed(B)>>>A[4:0]):
				 (ALUOp==7) ? (B>>A[4:0]):
				 (ALUOp==8) ? (($signed(A)<$signed(B))? 32'b1 : 32'b0):
				 (ALUOp==9) ? ((A<B) ? 32'b1:32'b0):
				 (ALUOp==10) ? ~(A|B):
				 0;
endmodule
