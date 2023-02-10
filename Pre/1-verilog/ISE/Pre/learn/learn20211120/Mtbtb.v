`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:31:49 11/20/2021
// Design Name:   FlowReg_M
// Module Name:   E:/ISE/Pre/learn/learn20211120/Mtbtb.v
// Project Name:  learn20211120
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FlowReg_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mtbtb;

	// Inputs
	reg clk;
	reg rfwe_E;
	reg dmwe_E;
	reg [1:0] rfwdsel_E;
	reg [1:0] dmtype_E;
	reg [1:0] tnew_E;
	reg [4:0] read1addr_E;
	reg [4:0] read2addr_E;
	reg [4:0] writeaddr_E;
	reg [31:0] ALUres_E;
	reg [31:0] wddm_E;
	reg [31:0] pc8_E;
	reg [31:0] command_E;
	reg [31:0] commandAddr_E;

	// Outputs
	wire rfwe_M;
	wire dmwe_M;
	wire [1:0] rfwdsel_M;
	wire [1:0] dmtype_M;
	wire [1:0] tnew_M;
	wire [4:0] read1addr_M;
	wire [4:0] read2addr_M;
	wire [4:0] writeaddr_M;
	wire [31:0] ALUres_M;
	wire [31:0] wddm_M;
	wire [31:0] pc8_M;
	wire [31:0] command_M;
	wire [31:0] commandAddr_M;

	// Instantiate the Unit Under Test (UUT)
	FlowReg_M uut (
		.clk(clk), 
		.rfwe_E(rfwe_E), 
		.dmwe_E(dmwe_E), 
		.rfwdsel_E(rfwdsel_E), 
		.dmtype_E(dmtype_E), 
		.tnew_E(tnew_E), 
		.read1addr_E(read1addr_E), 
		.read2addr_E(read2addr_E), 
		.writeaddr_E(writeaddr_E), 
		.ALUres_E(ALUres_E), 
		.wddm_E(wddm_E), 
		.pc8_E(pc8_E), 
		.command_E(command_E), 
		.commandAddr_E(commandAddr_E), 
		.rfwe_M(rfwe_M), 
		.dmwe_M(dmwe_M), 
		.rfwdsel_M(rfwdsel_M), 
		.dmtype_M(dmtype_M), 
		.tnew_M(tnew_M), 
		.read1addr_M(read1addr_M), 
		.read2addr_M(read2addr_M), 
		.writeaddr_M(writeaddr_M), 
		.ALUres_M(ALUres_M), 
		.wddm_M(wddm_M), 
		.pc8_M(pc8_M), 
		.command_M(command_M), 
		.commandAddr_M(commandAddr_M)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rfwe_E = 0;
		dmwe_E = 0;
		rfwdsel_E = 0;
		dmtype_E = 0;
		tnew_E = 0;
		read1addr_E = 0;
		read2addr_E = 0;
		writeaddr_E = 0;
		ALUres_E = 0;
		wddm_E = 0;
		pc8_E = 0;
		command_E = 0;
		commandAddr_E = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

