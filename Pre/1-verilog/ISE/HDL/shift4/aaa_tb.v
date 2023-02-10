`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:56:37 10/24/2021
// Design Name:   top_module
// Module Name:   E:/ISE/HDL/shift4/aaa_tb.v
// Project Name:  shift4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module aaa_tb;

	// Inputs
	reg clk;
	reg areset;
	reg load;
	reg ena;
	reg [3:0] data;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	top_module uut (
		.clk(clk), 
		.areset(areset), 
		.load(load), 
		.ena(ena), 
		.data(data), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		areset = 0;
		load = 0;
		ena = 0;
		data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

