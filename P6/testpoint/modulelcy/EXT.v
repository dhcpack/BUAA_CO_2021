`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:36:59 11/20/2021 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input [15:0] E16,
    input [31:0] EXTOp,
    output [31:0] E32
    );

	assign E32 = (EXTOp==0) ? {{16{1'b0}},E16} :
					 (EXTOp==1) ? {{16{E16[15]}},E16} :
					 (EXTOp==2) ? {E16,{16{1'b0}}} :
					 (EXTOp==3) ? {27'b0,E16[10:6]} :
					 0;
					 
endmodule
