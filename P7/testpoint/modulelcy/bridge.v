`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:25:21 12/12/2021 
// Design Name: 
// Module Name:    bridge 
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
module bridge(
	input [31:0] addr,
	input [31:0] Dout_TC1,
	input [31:0] Dout_TC2,
	output [31:0] TCRD,
	output WE_TC1,
	output WE_TC2,
	input [31:0] RD2_M_final,
	input Req,
	input MemWr_M
    ); 
	wire hitTC1 = (addr >=32'h7f00)&&(addr<=32'h7f0b ); 
	wire hitTC2 = (addr >=32'h7f10)&&(addr<=32'h7f1b ); 
	
	assign WE_TC1= (hitTC1) && (MemWr_M==1)&&(!Req);
	assign WE_TC2= (hitTC2) && (MemWr_M==1)&&(!Req);
	
	assign TCRD = ( hitTC1 )? Dout_TC1:
					  ( hitTC2 )? Dout_TC2:
				   	32'b0;
endmodule
