`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:51:04 11/20/2021 
// Design Name: 
// Module Name:    CU_D 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CU_D(
    input [31:0] instrI,
    input [31:0] PC8I,
    output reg[31:0] PC8O,
    output reg [4:0] A1O,
    output reg [4:0] A2O,
    output reg[15:0] Imm,
    input [31:0] PC4I,
    output reg[31:0] PC4O,
    output reg[31:0] instrO,
	 input [31:0] PCI,
	 output reg [31:0] PCO,
    input clk,
    input clr,
	 input reset,
    input en,
	 input clr_delay// clr_delay==1 : clear the delay slot
    );
	 
	initial
	begin
		PC8O<= 32'b0;
		A1O<= 32'b0;
		A2O<= 32'b0;
		Imm<= 16'b0;
		PC4O<= 32'b0;
		PCO <= 32'b0;
		instrO<= 32'b0;
	end 
	
	always @(posedge clk)
	begin
		if(clr==1||reset==1||(clr_delay==1&&en!=1))
		begin
			PC8O<= 32'b0;
			A1O<= 32'b0;
			A2O<= 32'b0;
			Imm<= 16'b0;
			PC4O<= 32'b0;
			PCO<= 32'b0;
			instrO<= 32'b0;
		end
		else if(en!=1)
		begin
			PC8O<= PC8I;
			A1O<= instrI[25:21];
			A2O<= instrI[20:16];
			Imm<= instrI[15:0];
			PC4O<= PC4I;
			PCO<= PCI;
			instrO<= instrI;
		end
	end

endmodule
