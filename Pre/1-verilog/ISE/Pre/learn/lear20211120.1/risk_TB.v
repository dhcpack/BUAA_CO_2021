`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:42:12 11/20/2021
// Design Name:   RiskSolveUnit
// Module Name:   E:/ISE/Pre/learn/lear20211120.1/risk_TB.v
// Project Name:  lear20211120.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RiskSolveUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module risk_TB;

	// Inputs
	reg rfwe_E;
	reg rfwe_M;
	reg rfwe_W;
	reg [4:0] read1addr_D;
	reg [4:0] read2addr_D;
	reg [4:0] read1addr_E;
	reg [4:0] read2addr_E;
	reg [4:0] read2addr_M;
	reg [4:0] writeaddr_E;
	reg [4:0] writeaddr_M;
	reg [4:0] writeaddr_W;
	reg [1:0] tuse_Drs;
	reg [1:0] tuse_Drt;
	reg [1:0] tnew_E;
	reg [1:0] tnew_M;
	reg [31:0] command_M;

	// Outputs
	wire [1:0] forward_CMPa_D;
	wire [1:0] forward_CMPb_D;
	wire [1:0] forward_ALUa_E;
	wire [1:0] forward_ALUb_E;
	wire [1:0] forward_DM_M;
	wire stall_F;
	wire stall_D;
	wire fulsh_E;

	// Instantiate the Unit Under Test (UUT)
	RiskSolveUnit uut (
		.rfwe_E(rfwe_E), 
		.rfwe_M(rfwe_M), 
		.rfwe_W(rfwe_W), 
		.read1addr_D(read1addr_D), 
		.read2addr_D(read2addr_D), 
		.read1addr_E(read1addr_E), 
		.read2addr_E(read2addr_E), 
		.read2addr_M(read2addr_M), 
		.writeaddr_E(writeaddr_E), 
		.writeaddr_M(writeaddr_M), 
		.writeaddr_W(writeaddr_W), 
		.forward_CMPa_D(forward_CMPa_D), 
		.forward_CMPb_D(forward_CMPb_D), 
		.forward_ALUa_E(forward_ALUa_E), 
		.forward_ALUb_E(forward_ALUb_E), 
		.forward_DM_M(forward_DM_M), 
		.tuse_Drs(tuse_Drs), 
		.tuse_Drt(tuse_Drt), 
		.tnew_E(tnew_E), 
		.tnew_M(tnew_M), 
		.stall_F(stall_F), 
		.stall_D(stall_D), 
		.fulsh_E(fulsh_E), 
		.command_M(command_M)
	);

	initial begin
		// Initialize Inputs
		rfwe_E = 0;
		rfwe_M = 0;
		rfwe_W = 0;
		read1addr_D = 0;
		read2addr_D = 0;
		read1addr_E = 0;
		read2addr_E = 0;
		read2addr_M = 0;
		writeaddr_E = 0;
		writeaddr_M = 0;
		writeaddr_W = 0;
		tuse_Drs = 0;
		tuse_Drt = 0;
		tnew_E = 0;
		tnew_M = 0;
		command_M = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

