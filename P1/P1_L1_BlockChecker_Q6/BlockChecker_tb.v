`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:26:36 10/21/2021
// Design Name:   BlockChecker
// Module Name:   E:/ISE/P1/P1_L1_BlockChecker_Q6/BlockChecker_tb.v
// Project Name:  P1_L1_BlockChecker_Q6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BlockChecker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BlockChecker_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] in;

	// Outputs
	wire result;

	// Instantiate the Unit Under Test (UUT)
	BlockChecker uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		in = 0;

		#7;
		reset = 1;
		#3;
		reset = 0;
		#10;
		in = "a";
		#10;
		in = " ";
		#10;
		in = "B";
		#10;
		in = "E";
		#10;
		in = "g";
		#10;
		in = "I";
		#10;
		in = "N";
		#10;
		in = " ";
		#10;
		in = "E";
		#10;
		in = "n";
		#10;
		in = "D";
		#10;
		in = "c";
		#10;
		in = " ";
		#10;
		in = "e";
		#10;
		in = "n";
		#10;
		in = "d";
		#10;
		in = " ";
		#10;
		in = "e";
		#10;
		in = "n";
		#10;
		in = "d";
		#10;
		in = " ";
		#10;
		in = "B";
		#10;
		in = "E";
		#10;
		in = "G";
		#10;
		in = "i";
		#10;
		in = "n";
		#10;
		in = " ";
		#10;
		in = "e";
		#10;
		in = "n";
		#10;
		in = "d";
		#7;
		reset = 1;
		#2
		reset = 0;
		#1;
		in = "B";
		#10;
		in = "E";
		#10;
		in = "G";
		#10;
		in = "i";
		#10;
		in = "n";
		#10;
		in = " ";
		#10;
		in = "e";
		#10;
		in = "n";
		#10;
		in = "d";  
		
/*		#7;
		reset = 1;
		#3;
		reset = 0;
		#10;
		in = "a";
		#10;
		in = " ";
		#10;
		in = "B";
		#10;
		in = "E";
		#10;
		in = "g";
		#10;
		in = "I";
		#10;
		in = "N";
		#10;
		in = " ";
		#10;
		in = "B";
		#10;
		in = "E";
		#10;
		in = "g";
		#10;
		in = "I";
		#10;
		in = "N";
		#10;
		in = " ";
		#10;
		in = "e";
		#10;
		in = "n";
		#10;
		in = "d"; 
		#10;
		in = " ";
		#10;
		in = "e";
		#10;
		in = "n";
		#10;
		in = "d"; 
		#10;
		in = "A";
		# 10;
		in = " ";
		#10;
		in = "e";
		#10;
		in = "n";
		#10;
		in = "d"; 
		#10;
		in = " "; */
		
		#3;
		reset = 1;
		#10;
		in = "e";
		#4;
		reset = 0;
		
		#10;
		in = "n";
		#10;
		in = "d"; 
		# 10;
		in = " ";
		#10;
		in = "A";
		
		
		
		
		
		
		
		

		
		
		
		// Add stimulus here

	end
	
	always #5 clk = ~clk;
      
endmodule

