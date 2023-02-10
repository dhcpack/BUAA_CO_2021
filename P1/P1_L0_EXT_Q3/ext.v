`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:38 10/21/2021 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] imm,
    input [1:0] EOp,
    output [31:0] ext
    );
	
	wire sign;
	assign sign = imm[15];
	wire [31:0] out1,out2,out3,out4;
	assign out1 = (sign == 1) ? {16'hffff, imm} : {16'h0, imm};
	assign out2 = {16'h0, imm};
	assign out3 = {imm, 16'h0};
	assign out4 = out1 << 2'b10;
	
	assign ext = (EOp == 2'b00) ? out1:
					 (EOp == 2'b01) ? out2:
					 (EOp == 2'b10) ? out3:out4;
	

endmodule
