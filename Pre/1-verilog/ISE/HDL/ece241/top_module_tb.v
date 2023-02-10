`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:59:16 10/24/2021
// Design Name:   top_module
// Module Name:   E:/ISE/HDL/ece241/top_module_tb.v
// Project Name:  ece241
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
	reg enable;
	reg S;
	reg A;
	reg B;
	reg C;

	// Outputs
	wire Z;

	// Instantiate the Unit Under Test (UUT)
	top_module uut (
		.clk(clk), 
		.enable(enable), 
		.S(S), 
		.A(A), 
		.B(B), 
		.C(C), 
		.Z(Z)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		enable = 0;
		S = 0;
		A = 0;
		B = 0;
		C = 0;

		# 3;
		enable = 1;
		#10;
		S = 1;
		#10;
		S = 0;
		#10;
		S = 1;
		#10;
		S = 0;
		#10;
		S = 1;
		#10;
		S = 0;
		# 10;
		
		

	end
	
	always #5 clk = ~ clk;
	
      
endmodule

