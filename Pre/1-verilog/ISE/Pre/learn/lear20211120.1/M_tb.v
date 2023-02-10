`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:37:10 11/20/2021
// Design Name:   M
// Module Name:   E:/ISE/Pre/learn/lear20211120.1/M_tb.v
// Project Name:  lear20211120.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module M_tb;

	// Inputs
	reg clk;
	reg reset;
	reg dmwe_M;
	reg [31:0] ALUres_M;
	reg [31:0] res_W;
	reg [31:0] wddm_M;
	reg [1:0] forward_DM_M;
	reg [1:0] dmtype_M;
	reg [31:0] commandAddr_M;

	// Outputs
	wire [31:0] DMRes_M;

	// Instantiate the Unit Under Test (UUT)
	M uut (
		.clk(clk), 
		.reset(reset), 
		.dmwe_M(dmwe_M), 
		.ALUres_M(ALUres_M), 
		.res_W(res_W), 
		.wddm_M(wddm_M), 
		.forward_DM_M(forward_DM_M), 
		.dmtype_M(dmtype_M), 
		.commandAddr_M(commandAddr_M), 
		.DMRes_M(DMRes_M)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		dmwe_M = 0;
		ALUres_M = 0;
		res_W = 0;
		wddm_M = 0;
		forward_DM_M = 0;
		dmtype_M = 0;
		commandAddr_M = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

