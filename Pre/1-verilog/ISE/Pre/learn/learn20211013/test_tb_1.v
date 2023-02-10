`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:46:54 10/13/2021
// Design Name:   test
// Module Name:   E:/ISE/learn/learn20211013/test_tb_1.v
// Project Name:  learn20211013
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_tb_1;

	// Inputs
	reg rstn;
	reg clk;
	reg D;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.rstn(rstn), 
		.clk(clk), 
		.D(D), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		rstn = 1;
		clk = 0;
		D = 0;

		// Wait 100 ns for global reset to finish
		# 5;
		D = 1;
		# 5;
		D = 0;
		# 5;
		D = 1;
		# 10;
		rstn = 0;
		# 10
		rstn = 1;
        
		// Add stimulus here

	end
	
	always #1 clk=~clk;
      
endmodule

