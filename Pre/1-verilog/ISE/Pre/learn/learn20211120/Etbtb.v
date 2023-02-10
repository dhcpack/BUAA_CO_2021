`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:29:06 11/20/2021
// Design Name:   E
// Module Name:   E:/ISE/Pre/learn/learn20211120/Etbtb.v
// Project Name:  learn20211120
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: E
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Etbtb;

	// Inputs
	reg [1:0] forward_ALUa_E;
	reg [1:0] forward_ALUb_E;
	reg [1:0] asel_E;
	reg [1:0] bsel_E;
	reg [31:0] pc8_M;
	reg [31:0] ALUres_M;
	reg [31:0] res_W;
	reg [31:0] rfrd1_E;
	reg [31:0] rfrd2_E;
	reg [31:0] extres;

	// Outputs
	wire [31:0] ALUres_E;
	wire [31:0] wddm_E;

	// Instantiate the Unit Under Test (UUT)
	E uut (
		.forward_ALUa_E(forward_ALUa_E), 
		.forward_ALUb_E(forward_ALUb_E), 
		.asel_E(asel_E), 
		.bsel_E(bsel_E), 
		.pc8_M(pc8_M), 
		.ALUres_M(ALUres_M), 
		.res_W(res_W), 
		.rfrd1_E(rfrd1_E), 
		.rfrd2_E(rfrd2_E), 
		.extres(extres), 
		.ALUres_E(ALUres_E), 
		.wddm_E(wddm_E)
	);

	initial begin
		// Initialize Inputs
		forward_ALUa_E = 0;
		forward_ALUb_E = 0;
		asel_E = 0;
		bsel_E = 0;
		pc8_M = 0;
		ALUres_M = 0;
		res_W = 0;
		rfrd1_E = 0;
		rfrd2_E = 0;
		extres = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

