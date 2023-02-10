`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:10:33 11/21/2021 
// Design Name: 
// Module Name:    FORWARD 
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
module FORWARD(
	//input
    input [31:0] AO_M,
	 input [31:0] PC8_M,
	 input [31:0] WD_W,
	 input [31:0] PC8_W,
	 input [31:0] RD1,
	 input [31:0] RD2,
	 input [31:0] RD1_E,
	 input [31:0] RD2_E,
	 input [31:0] RD2_M,
	 //output
	 output [31:0] RD1_D,
	 output [31:0] RD2_D,
	 output [31:0] RD1_E_final,
	 output [31:0] RD2_E_final,
	 output [31:0] RD2_M_final,
	 //address
	 input [4:0] A1_D,
	 input [4:0] A2_D,
	 input [4:0] A1_E,
	 input [4:0] A2_E,
	 input [4:0] A2_M,
	 input [4:0] A3_M,
	 input [4:0] A3_W,
	 input RegWr_M,
	 input RegWr_W,
	 input [31:0] MemtoReg_M,
	 input [31:0] MDO_M,
	 input [31:0] Tnew_M,
	 input [31:0] Tnew_W
    );
	 
	 assign RD1_D = ( RegWr_M ==1 && A3_M==A1_D && A1_D!=0 && MemtoReg_M==0 ) ? AO_M :
						 ( RegWr_M ==1 && A3_M==A1_D && A1_D!=0 && MemtoReg_M==2 ) ? PC8_M :
						 ( RegWr_M ==1 && A3_M==A1_D && A1_D!=0 && MemtoReg_M==4 ) ? MDO_M :
						 ( RegWr_W ==1 && A3_W==A1_D && A1_D!=0 ) ? WD_W:
						 RD1;
	 
	 assign RD2_D = ( RegWr_M ==1 && A3_M==A2_D && A2_D!=0 && MemtoReg_M==0 ) ? AO_M :
						 ( RegWr_M ==1 && A3_M==A2_D && A2_D!=0 && MemtoReg_M==2 ) ? PC8_M :
						 ( RegWr_M ==1 && A3_M==A2_D && A2_D!=0 && MemtoReg_M==4 ) ? MDO_M :
						 ( RegWr_W ==1 && A3_W==A2_D && A2_D!=0 ) ? WD_W:
						RD2;

 	 assign RD1_E_final = ( RegWr_M ==1 && A3_M==A1_E && A1_E!=0 && MemtoReg_M==0 ) ? AO_M :
								 ( RegWr_M ==1 && A3_M==A1_E && A1_E!=0 && MemtoReg_M==2 ) ? PC8_M :
								 ( RegWr_M ==1 && A3_M==A1_E && A1_E!=0 && MemtoReg_M==4 ) ? MDO_M :
								 ( RegWr_W ==1 && A3_W==A1_E && A1_E!=0 ) ? WD_W:
								  RD1_E;
	 
	 assign RD2_E_final = ( RegWr_M ==1 && A3_M==A2_E && A2_E!=0 && MemtoReg_M==0 ) ? AO_M :
								 ( RegWr_M ==1 && A3_M==A2_E && A2_E!=0 && MemtoReg_M==2 ) ? PC8_M :
								 ( RegWr_M ==1 && A3_M==A2_E && A2_E!=0 && MemtoReg_M==4 ) ? MDO_M :
								 ( RegWr_W ==1 && A3_W==A2_E && A2_E!=0 ) ? WD_W:
								   RD2_E;
	 assign RD2_M_final = ( RegWr_W ==1 && A3_W==A2_M && A2_M!=0 ) ? WD_W:
									RD2_M;
endmodule
