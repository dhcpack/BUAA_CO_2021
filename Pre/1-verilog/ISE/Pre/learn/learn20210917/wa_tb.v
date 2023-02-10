`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:28:43 09/17/2021
// Design Name:   waytodealwithsignedwords
// Module Name:   E:/ISE/learn20210917/wa_tb.v
// Project Name:  learn20210917
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: waytodealwithsignedwords
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module wa_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire res;

	// Instantiate the Unit Under Test (UUT)
	waytodealwithsignedwords uut (
		.clk(clk), 
		.reset(reset), 
		.a(a), 
		.b(b), 
		.res(res)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		a = 4;
		b = 1;

		// Wait 100 ns for global reset to finish
		#100 b = -1;
		// Add stimulus here

	end
      
endmodule

