`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:07:06 10/21/2021
// Design Name:   practice
// Module Name:   E:/ISE/P1/practice/practice1.v
// Project Name:  practice
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

module practice1;
	
	reg [2:0]a,b;
	reg c;
	initial begin
		a = 3'b0;
		b = a - 3'b1;
		assign c = (b < 0) ? 1 : 0;
		

	end
      
endmodule

