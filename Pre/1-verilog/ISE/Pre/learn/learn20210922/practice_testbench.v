`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:53:09 09/22/2021
// Design Name:   test
// Module Name:   E:/ISE/learn/learn20210922/practice_testbench.v
// Project Name:  learn20210922
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module practice_testbench;

	// Inputs
	reg temp;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.temp(temp)
	);

	initial begin
		// Initialize Inputs
		temp = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

