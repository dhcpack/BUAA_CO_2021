`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:31:20 10/18/2021
// Design Name:   practice2
// Module Name:   E:/ISE/learn/learn20211015/practice2_tb.v
// Project Name:  learn20211015
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: practice2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module practice2_tb;

	// Inputs
	reg a;
	reg b;
	// Outputs
	wire c;

	// Instantiate the Unit Under Test (UUT)
	practice2 uut (
		.a(a), 
		.b(b), 
		.c(c)
	);
	integer i;
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		
		for(i=0;i<100;i=i+1) begin
			#1;
			a = i;	
		end
		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
	end

	  
      
endmodule

