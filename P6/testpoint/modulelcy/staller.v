`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:19:44 11/25/2021 
// Design Name: 
// Module Name:    staller 
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
module staller(
	input [31:0] Tuse_rs,
	input [31:0] Tuse_rt,
	input [31:0] Tnew_E,
	input [31:0] Tnew_M,
	input [31:0] Tnew_W,
	input  RegWr_E,
	input  RegWr_M,
	input [4:0] A1_D,
	input [4:0] A2_D,
	input [4:0] A3_E,
	input [4:0] A3_M,
	output Stall,
	input busy,
	input start,
	input MD_D
    );
	wire Stall_rs_E =( (Tuse_rs < Tnew_E ) && (A3_E == A1_D ) && (A1_D!=0 ) && (RegWr_E ==1) ) ? 1:0;
	wire Stall_rs_M =( (Tuse_rs < Tnew_M ) && (A3_M == A1_D ) && (A1_D!=0 ) && (RegWr_M ==1) ) ? 1:0;
	wire Stall_rs = Stall_rs_E || Stall_rs_M;
	
	wire Stall_rt_E =( (Tuse_rt < Tnew_E ) && (A3_E == A2_D ) && (A2_D!=0 ) && (RegWr_E ==1) ) ? 1:0;
	wire Stall_rt_M =( (Tuse_rt < Tnew_M ) && (A3_M == A2_D ) && (A2_D!=0 ) && (RegWr_M ==1) ) ? 1:0;
	wire Stall_rt = Stall_rt_E || Stall_rt_M;
	
	wire Stall_busy = (busy|start) & MD_D;
	
	wire violence = ( (Tnew_E>50)||(Tnew_M>50)||(Tnew_W>50) )? 1:0;
	
	assign Stall = Stall_rs | Stall_rt| Stall_busy | violence ;
	
	

endmodule
