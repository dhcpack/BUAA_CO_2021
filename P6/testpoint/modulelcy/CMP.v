`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:54:11 11/20/2021 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input [31:0] A,
    input [31:0] B,
    output equal,
	 input BGEZ,
	 input BGTZ,
	 input BLEZ,
	 input BLTZ,
	 input BEQ,
	 input BNE
    );

	assign equal =
					  ( ($signed(A) >= $signed(0) ) && BGEZ==1) ? 1:
					  ( ($signed(A) > $signed(0) ) && BGTZ==1) ? 1:
					  ( ($signed(A) <= $signed(0) ) && BLEZ==1) ? 1:
					  ( ($signed(A) < $signed(0) ) && BLTZ==1) ? 1:
					  ( A==B && BEQ==1) ? 1:
					  ( A!=B && BNE==1) ? 1:
						0;

endmodule
