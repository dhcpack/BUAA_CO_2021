`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:52:59 12/03/2021
// Design Name:   practice
// Module Name:   E:/ISE/Pre/learn/learn20211203/practice_tb.v
// Project Name:  learn20211203
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: practice
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module practice_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Instantiate the Unit Under Test (UUT)
	practice uut (
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
		a = 1;
		b = 0;
		c = 1;
	end
	
	initial begin
		#1;
		a <= b;
		b = c;
		c <= b;
	end
      
endmodule

