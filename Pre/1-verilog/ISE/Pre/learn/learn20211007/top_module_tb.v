`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:10:05 10/07/2021
// Design Name:   top_module
// Module Name:   E:/ISE/learn/learn20211007/top_module_tb.v
// Project Name:  learn20211007
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

module top_module_tb;

	// Inputs
	reg clk;
	reg reset;
	reg ena;

	// Outputs
	wire pm;
	wire [7:0] hh;
	wire [7:0] mm;
	wire [7:0] ss;

	// Instantiate the Unit Under Test (UUT)
	top_module uut (
		.clk(clk), 
		.reset(reset), 
		.ena(ena), 
		.pm(pm), 
		.hh(hh), 
		.mm(mm), 
		.ss(ss)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		ena = 0;
	
		#5 ena = 1;
		#864000 reset = 1;
	end
	
	always #5 clk = ~clk;
	
	
	
	
	
	
      
endmodule

