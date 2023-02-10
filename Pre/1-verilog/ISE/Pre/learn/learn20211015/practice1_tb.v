`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:57:36 10/15/2021
// Design Name:   practice1
// Module Name:   E:/ISE/learn/learn20211015/practice1_tb.v
// Project Name:  learn20211015
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: practice1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module practice1_tb;

	// Outputs
	reg a;
	reg b;
	reg c;

	initial begin
		a=0;
		b=1;
		c=0;
		
		#5;
		a<= b;
		b=c;
		c<=b;
	end
      
endmodule

