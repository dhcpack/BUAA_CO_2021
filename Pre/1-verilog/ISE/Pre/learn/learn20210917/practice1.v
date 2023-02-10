`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:16:06 09/17/2021 
// Design Name: 
// Module Name:    practice1 
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
module practice1(
    input a,
    input b,
	 input carry1,
    output out,
	 output carry2
    );
	 
	 assign out = ~a&~b&carry1|~a&b&~carry1|a&~b&~carry1|a&b&carry1;
	 assign carry2 = b&carry1|a&carry1|a&b;
	

endmodule
