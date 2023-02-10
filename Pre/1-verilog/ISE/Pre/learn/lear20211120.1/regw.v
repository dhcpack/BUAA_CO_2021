`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:39:00 11/20/2021
// Design Name:   FlowReg_W
// Module Name:   E:/ISE/Pre/learn/lear20211120.1/regw.v
// Project Name:  lear20211120.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FlowReg_W
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regw;

	// Inputs
	reg clk;
	reg rfwe_M;
	reg [1:0] rfwdsel_M;
	reg [1:0] tnew_M;
	reg [4:0] writeaddr_M;
	reg [31:0] ALUres_M;
	reg [31:0] DMRes_M;
	reg [31:0] pc8_M;
	reg [31:0] command_M;

	// Outputs
	wire rfwe_W;
	wire [1:0] rfwdsel_W;
	wire [1:0] tnew_W;
	wire [4:0] writeaddr_W;
	wire [31:0] ALUres_W;
	wire [31:0] DMRes_W;
	wire [31:0] pc8_W;
	wire [31:0] command_W;

	// Instantiate the Unit Under Test (UUT)
	FlowReg_W uut (
		.clk(clk), 
		.rfwe_M(rfwe_M), 
		.rfwdsel_M(rfwdsel_M), 
		.tnew_M(tnew_M), 
		.writeaddr_M(writeaddr_M), 
		.ALUres_M(ALUres_M), 
		.DMRes_M(DMRes_M), 
		.pc8_M(pc8_M), 
		.command_M(command_M), 
		.rfwe_W(rfwe_W), 
		.rfwdsel_W(rfwdsel_W), 
		.tnew_W(tnew_W), 
		.writeaddr_W(writeaddr_W), 
		.ALUres_W(ALUres_W), 
		.DMRes_W(DMRes_W), 
		.pc8_W(pc8_W), 
		.command_W(command_W)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rfwe_M = 0;
		rfwdsel_M = 0;
		tnew_M = 0;
		writeaddr_M = 0;
		ALUres_M = 0;
		DMRes_M = 0;
		pc8_M = 0;
		command_M = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

