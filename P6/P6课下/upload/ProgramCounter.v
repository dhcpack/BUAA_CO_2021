`timescale 1ns/1ps

module ProgramCounter(
		input clk,input reset,
		input pcEnabled,
		input [1:0] pcControlInID,
		input [1:0] pcControlInEX,
		input [1:0] pcControlInMEM,
		input toBranchInID,
		input cuRegBranchInID,
		input toBranchInEX,
		input cuMdBranchInEX,
		input toBranchInMEM,
		input cuDmBranchInMEM,
		input [31:0] branchAddrInID,
		input [31:0] branchAddrInEX,
		input [31:0] branchAddrInMEM,
		input [25:0] jumpAddrFromImm,
		input [31:0] jumpAddrFormReg1InID,
		input [31:0] jumpAddrFormReg2InID,
		input [31:0] jumpAddrFormReg1InEX,
		input [31:0] jumpAddrFormReg2InEX,
		input [31:0] jumpAddrFormReg1InMEM,
		input [31:0] jumpAddrFormReg2InMEM,
		output reg [31:0] currentCommandAddr,
		output [31:0] nextCommandAddr
	);

	wire [31:0] finalSelectedAddr;

	assign nextCommandAddr=currentCommandAddr+4;
	assign finalSelectedAddr=cuDmBranchInMEM?(toBranchInMEM?pcControlInMEM[1]?jumpAddrFormReg2InMEM:branchAddrInMEM:nextCommandAddr):
		cuMdBranchInEX?(toBranchInEX?pcControlInEX[1]?jumpAddrFormReg1InEX:branchAddrInEX:nextCommandAddr):
		cuRegBranchInID?(toBranchInID?pcControlInID[1]?jumpAddrFormReg2InID:branchAddrInID:nextCommandAddr):
		(pcControlInID==2)?{nextCommandAddr[31:28],jumpAddrFromImm[25:0],{2{1'b0}}}:(pcControlInID==3)?jumpAddrFormReg1InID:nextCommandAddr;

	initial currentCommandAddr[31:0]<=32'h3000;

	always @(posedge clk) begin
		if (reset) currentCommandAddr[31:0]<=32'h3000;
		else if (!pcEnabled) currentCommandAddr<=finalSelectedAddr;
		else begin end
	end

endmodule