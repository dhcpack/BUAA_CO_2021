`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:00:43 10/21/2021
// Design Name:   string
// Module Name:   E:/ISE/P1/P1_Q5/string_tb.v
// Project Name:  P1_Q5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: string
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module string_tb;

	// Inputs
	reg clk;
	reg clr;
	reg [7:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	string uut (
		.clk(clk), 
		.clr(clr), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;
		in = 0;
		
		#7;
		in = "9";
		#10;
		in = "2";
		
		#3;
		clr = 1;
		#7;
		clr = 0;
		# 10;
		in = "+";
		# 10;
		in = "3";
		#20;
		in = "*";
		# 10;
		in = "2";
		# 4;
		clr = 1;
		#6;
		clr = 0;
		in = "+";
		#10;
		in = "9";
		

		

	end
	
	always #5 clk = ~clk;
      
endmodule

