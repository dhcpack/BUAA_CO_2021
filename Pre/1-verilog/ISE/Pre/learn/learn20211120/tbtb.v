`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:39:10 11/20/2021
// Design Name:   FlowReg_E
// Module Name:   E:/ISE/Pre/learn/learn20211120/tbtb.v
// Project Name:  learn20211120
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FlowReg_E
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tbtb;

	// Inputs
	reg clk;
	reg CLR_E;
	reg rfwe_D;
	reg dmwe_D;
	reg [1:0] rfwdsel_D;
	reg [1:0] asel_D;
	reg [1:0] bsel_D;
	reg [1:0] dmtype_D;
	reg [1:0] tnew_D;
	reg [4:0] aluop_D;
	reg [4:0] read1addr_D;
	reg [4:0] read2addr_D;
	reg [4:0] writeaddr_D;
	reg [31:0] rfrd1_D;
	reg [31:0] rfrd2_D;
	reg [31:0] pc8_D;
	reg [31:0] extres_D;
	reg [31:0] command_D;
	reg [31:0] commandAddr_D;

	// Outputs
	wire rfwe_E;
	wire dmwe_E;
	wire [1:0] rfwdsel_E;
	wire [1:0] asel_E;
	wire [1:0] bsel_E;
	wire [1:0] dmtype_E;
	wire [1:0] tnew_E;
	wire [4:0] aluop_E;
	wire [4:0] read1addr_E;
	wire [4:0] read2addr_E;
	wire [4:0] writeaddr_E;
	wire [31:0] rfrd1_E;
	wire [31:0] rfrd2_E;
	wire [31:0] pc8_E;
	wire [31:0] extres_E;
	wire [31:0] command_E;
	wire [31:0] commandAddr_E;

	// Instantiate the Unit Under Test (UUT)
	FlowReg_E uut (
		.clk(clk), 
		.CLR_E(CLR_E), 
		.rfwe_D(rfwe_D), 
		.dmwe_D(dmwe_D), 
		.rfwdsel_D(rfwdsel_D), 
		.asel_D(asel_D), 
		.bsel_D(bsel_D), 
		.dmtype_D(dmtype_D), 
		.tnew_D(tnew_D), 
		.aluop_D(aluop_D), 
		.read1addr_D(read1addr_D), 
		.read2addr_D(read2addr_D), 
		.writeaddr_D(writeaddr_D), 
		.rfrd1_D(rfrd1_D), 
		.rfrd2_D(rfrd2_D), 
		.pc8_D(pc8_D), 
		.extres_D(extres_D), 
		.command_D(command_D), 
		.commandAddr_D(commandAddr_D), 
		.rfwe_E(rfwe_E), 
		.dmwe_E(dmwe_E), 
		.rfwdsel_E(rfwdsel_E), 
		.asel_E(asel_E), 
		.bsel_E(bsel_E), 
		.dmtype_E(dmtype_E), 
		.tnew_E(tnew_E), 
		.aluop_E(aluop_E), 
		.read1addr_E(read1addr_E), 
		.read2addr_E(read2addr_E), 
		.writeaddr_E(writeaddr_E), 
		.rfrd1_E(rfrd1_E), 
		.rfrd2_E(rfrd2_E), 
		.pc8_E(pc8_E), 
		.extres_E(extres_E), 
		.command_E(command_E), 
		.commandAddr_E(commandAddr_E)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		CLR_E = 0;
		rfwe_D = 0;
		dmwe_D = 0;
		rfwdsel_D = 0;
		asel_D = 0;
		bsel_D = 0;
		dmtype_D = 0;
		tnew_D = 0;
		aluop_D = 0;
		read1addr_D = 0;
		read2addr_D = 0;
		writeaddr_D = 0;
		rfrd1_D = 0;
		rfrd2_D = 0;
		pc8_D = 0;
		extres_D = 0;
		command_D = 0;
		commandAddr_D = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

