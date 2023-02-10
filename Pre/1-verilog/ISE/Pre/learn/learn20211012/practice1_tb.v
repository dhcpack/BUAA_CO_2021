`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:12:16 10/12/2021
// Design Name:   practice1
// Module Name:   E:/ISE/learn/learn20211012/practice1_tb.v
// Project Name:  learn20211012
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

	// Inputs
	reg temp;

	// Instantiate the Unit Under Test (UUT)
	practice1 uut (
		.temp(temp)
	);

	initial begin
		// Initialize Inputs
		temp = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

