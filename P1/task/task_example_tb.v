`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:11:04 10/24/2021
// Design Name:   task_example
// Module Name:   E:/ISE/P1/task/task_example_tb.v
// Project Name:  task
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: task_example
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module task_example_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] s;
	wire count;

	// Instantiate the Unit Under Test (UUT)
	task_example uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		a = 4'b1010;
		b = 4'b0011;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#10;
		a = 4'b1010;
		b = 4'b0101;
		cin = 1;
        
		// Add stimulus here

	end
      
endmodule

