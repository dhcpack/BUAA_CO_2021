`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:53:18 09/17/2021
// Design Name:   zs
// Module Name:   E:/ISE/learn/zs_tb.v
// Project Name:  learn
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: zs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
////////////////////////////////////////////////////////////////////////////////
module zs_tb;

	// Inputs
	reg clk;
	reg a;

	// Outputs
	wire b;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	zs uut (
		.clk(clk), 
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		a = 1;		
	end
	
   always #5 clk = ~clk;
	always #10 a = ~a;
	
endmodule

