`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:12:56 09/20/2021
// Design Name:   a
// Module Name:   E:/ISE/learn/learn20210920/ab.v
// Project Name:  learn20210920
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: a
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ab;

	// Inputs
	reg [15:0] num;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	a uut (
		.num(num), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		num = 16'h15;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

