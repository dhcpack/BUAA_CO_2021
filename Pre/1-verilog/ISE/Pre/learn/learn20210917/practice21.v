`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:50:30 09/17/2021
// Design Name:   practice1
// Module Name:   E:/ISE/learn20210917/practice21.v
// Project Name:  learn20210917
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

module practice21;

	// Inputs
	reg a;
	reg b;
	reg carry1;

	// Outputs
	wire out;
	wire carry2;

	// Instantiate the Unit Under Test (UUT)
	practice1 uut (
		.a(a), 
		.b(b), 
		.carry1(carry1), 
		.out(out), 
		.carry2(carry2)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		carry1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

