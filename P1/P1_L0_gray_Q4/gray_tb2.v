`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:08:35 10/21/2021
// Design Name:   gray
// Module Name:   E:/ISE/P1/P1_L0_gray/gray_tb2.v
// Project Name:  P1_L0_gray
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gray
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gray_tb2;

	// Inputs
	reg Clk;
	reg Reset;
	reg En;

	// Outputs
	wire [2:0] Output;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	gray uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.En(En), 
		.Output(Output), 
		.Overflow(Overflow)
	);

	initial begin
		Clk = 0;
		Reset = 0;
		En = 0;
		
		#5;
		En = 1;
		#5;
		Reset = 1;
		#7;
		Reset = 0;
		#90
		Reset = 1;
		


	end
	
	always #5 Clk=~Clk;
      
endmodule

