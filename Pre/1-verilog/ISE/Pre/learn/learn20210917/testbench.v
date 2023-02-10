`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:52:14 09/17/2021
// Design Name:   vote7
// Module Name:   E:/ISE/learn20210917/testbench.v
// Project Name:  learn20210917
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vote7
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg [6:0] vote;

	// Outputs
	wire pass;

	// Instantiate the Unit Under Test (UUT)
	vote7 uut (
		.vote(vote), 
		.pass(pass)
	);

	initial begin
		// Initialize Inputs
		vote = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
	end
      
endmodule

