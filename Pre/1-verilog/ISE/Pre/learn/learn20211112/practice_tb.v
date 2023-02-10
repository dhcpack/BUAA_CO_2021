`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:56:36 11/12/2021
// Design Name:   practice
// Module Name:   E:/ISE/Pre/learn/learn20211112/practice_tb.v
// Project Name:  learn20211112
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

module practice_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [31:0] ctrlin;

	// Outputs
	wire result;

	// Instantiate the Unit Under Test (UUT)
	practice uut (
		.a(a), 
		.b(b), 
		.ctrlin(ctrlin), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		ctrlin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

