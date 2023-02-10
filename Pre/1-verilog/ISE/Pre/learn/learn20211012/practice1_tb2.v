`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:46:53 10/12/2021
// Design Name:   practice1
// Module Name:   E:/ISE/learn/learn20211012/practice1_tb2.v
// Project Name:  learn20211012
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

module practice1_tb2;

	// Inputs
	reg a1;
	reg a2;

	// Outputs
	wire c1;

	// Instantiate the Unit Under Test (UUT)
	practice1 uut (
		.a1(a1), 
		.a2(a2), 
		.c1(c1)
	);

	initial begin
		// Initialize Inputs
		a1 = 0;
		a2 = 0;
		$display("c1=%d",c1);
		# 5
		a1=1;
		$display("c1=%d",c1);
		#5
		a2=1;
		$display("c1=%d",c1);
		
		$display("c1=%d",c1);
	end
      
endmodule

