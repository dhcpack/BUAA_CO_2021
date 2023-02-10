`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:39:15 10/22/2021
// Design Name:   top_module
// Module Name:   E:/ISE/HDL/Bcdadd4/top_module_tb.v
// Project Name:  Bcdadd4
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
	reg [7:0] in;

	// Outputs
	wire [7:0] pedge;

	// Instantiate the Unit Under Test (UUT)
	top_module uut (
		.clk(clk), 
		.in(in), 
		.pedge(pedge)
	);

	initial begin
		clk = 0;
		in = 0;
		#2;
		in = 8'd2;
		#20;
		in = 8'he;
		#10;
		in = 8'd0;
		#10;
		in = 8'd2;
		

	end
	
	always #5 clk = ~clk;
      
endmodule

