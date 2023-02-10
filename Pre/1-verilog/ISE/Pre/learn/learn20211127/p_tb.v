`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:56:56 11/27/2021
// Design Name:   practice
// Module Name:   E:/ISE/Pre/learn/learn20211127/p_tb.v
// Project Name:  learn20211127
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

module p_tb;

	// Inputs
	reg [3:0] b;

	// Outputs
	wire res;

	// Instantiate the Unit Under Test (UUT)
	practice uut (
		.b(b), 
		.res(res)
	);

	initial begin
		// Initialize Inputs
		b = 0;

		// Wait 100 ns for global reset to finish
		#5;
b = 4'b0001;
# 5; 
b = 4'b0101;
# 5;
b = 4'b1101;		
		// Add stimulus here

	end
      
endmodule

