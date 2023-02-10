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
		input [31:0] jumpAddrFromReg1InID,
		input [31:0] jumpAddrFromReg2InID,
		input [31:0] jumpAddrFromReg1InEX,
		input [31:0] jumpAddrFromReg2InEX,
		input [31:0] jumpAddrFromReg1InMEM,
		input [31:0] jumpAddrFromReg2InMEM,
		input jumpToAddrInCP0,
		input jumpToAddrIn4180,
		input [31:0] commandAddrFromCP0,
		output reg [31:0] currentCommandAddr,
		output [31:0] nextCommandAddr
	);

	wire [31:0] finalSelectedAddr;

	assign nextCommandAddr=currentCommandAddr+4;
	assign finalSelectedAddr=jumpToAddrInCP0?commandAddrFromCP0:jumpToAddrIn4180?32'h4180:
		cuDmBranchInMEM?(toBranchInMEM?pcControlInMEM[1]?jumpAddrFromReg2InMEM:branchAddrInMEM:nextCommandAddr):
		cuMdBranchInEX?(toBranchInEX?pcControlInEX[1]?jumpAddrFromReg1InEX:branchAddrInEX:nextCommandAddr):
		cuRegBranchInID?(toBranchInID?pcControlInID[1]?jumpAddrFromReg2InID:branchAddrInID:nextCommandAddr):
		(pcControlInID==2)?{nextCommandAddr[31:28],jumpAddrFromImm[25:0],{2{1'b0}}}:(pcControlInID==3)?jumpAddrFromReg1InID:nextCommandAddr;

	initial currentCommandAddr[31:0]<=32'h3000;

	always @(posedge clk) begin
		if (reset) currentCommandAddr[31:0]<=32'h3000;
		else if (!pcEnabled) currentCommandAddr<=finalSelectedAddr;
		else begin end
	end

endmodule