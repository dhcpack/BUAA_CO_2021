`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:14:06 09/19/2021
// Design Name:   id_fsm
// Module Name:   E:/ISE/work/work2/id_fsm_tb.v
// Project Name:  work2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: id_fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module id_fsm_tb;

	// Inputs
	reg [7:0] char;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	id_fsm uut (
		.char(char), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		char = 1;
		clk = 0;
		#10
		char = 8'd97;
		#10
		char = 8'd98;
		#10
		char = 8'd48;
		#10
		char = 8'd49;
		#10
		char = 8'd96;
	end
	
	always #5 clk = ~clk;
      
endmodule

