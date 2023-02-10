`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:26:21 11/20/2021
// Design Name:   MUX
// Module Name:   C:/Users/a1271/Desktop/co_homework/p5/CPU/MUX_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_tb;

	// Inputs
	reg [31:0] in0;
	reg [31:0] in1;
	reg [31:0] in2;
	reg [31:0] in3;
	reg [31:0] in4;
	reg [31:0] in5;
	reg [31:0] in6;
	reg [31:0] in7;
	reg [31:0] sel;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	MUX #32 uut (
		.out(out), 
		.in0(in0), 
		.in1(in1), 
		.in2(in2), 
		.in3(in3), 
		.in4(in4), 
		.in5(in5), 
		.in6(in6), 
		.in7(in7), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		in0 = 0;
		in1 = 1;
		in2 = 2;
		in3 = 3;
		in4 = 4;
		in5 = 5;
		in6 = 6;
		in7 = 7;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		#10;
		sel=sel+1;
		#10;
		sel=sel+1;
		#10;
		sel=sel+1;
		#10;
		sel=sel+1;
		#10;
		sel=sel+1;
		#10;
		sel=sel+1;
		#10;
		sel=sel+1;
		#10;
		sel=sel+1;
        
		// Add stimulus here

	end
      
endmodule

