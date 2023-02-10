`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:52:47 10/11/2021
// Design Name:   practice1
// Module Name:   E:/ISE/learn/learn20211011/practice_tb.v
// Project Name:  learn20211011
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

module practice_tb;

	// Inputs
	reg [7:0] din;

	// Outputs
	wire [7:0] dout;

	// Instantiate the Unit Under Test (UUT)
	practice1 uut (
		.din(din), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		din = 8'b1010_0101;

		// Wait 100 ns for global reset to finish
		#10;
		
		din = 8'b1110_1011;
        
		// Add stimulus here

	end
      
endmodule

