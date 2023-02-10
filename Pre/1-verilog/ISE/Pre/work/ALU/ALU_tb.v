`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:48:02 09/18/2021
// Design Name:   ALU
// Module Name:   E:/ISE/ALU/ALU_tb.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg [31:0] input_a;
	reg [31:0] input_b;
	reg [1:0] op;
	reg clk;
	reg en;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)//模块实例化：wire类型信号可以被连接至任意端口上，但reg类型的信号只能被连接至元件的输入端口上。
	ALU uut (
		.input_a(input_a), 
		.input_b(input_b), 
		.op(op), 
		.clk(clk), 
		.en(en), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		input_a = 0;
		input_b = 0;
		op = 0;
		clk = 0;
		en = 0;
		// Wait for 10 ns and Set en to 1
		#10
		en = 1'b1;
		
		// Test Add and Sequential Logic
		input_a = 32'd19260817;
		input_b = 32'd99999999;
		
		// Test Sub and Whether Result Will Change within Clock High Level
		#8
		op = 2'd1;
		
		// Test when en is 0, Whether Result Will Change
		#12
		en = 1'b0;
		input_a = 32'd100;
		
	end
	
	always #5 clk = ~clk;

endmodule

