`timescale 1ns/1ps

/*
	All Lines:
	--------------------------------------------------------------------------------------------------
	currentCommand			extendMood				immToExtend					immAfterExtend
	ALUInputSelect			ALUInputA				ALUInputB					ALUOperation
	ALUOutput				ALUIsZero				regData1					regData2
	writeToReg31			regWriteEnabled			regReadAddr1				regReadAddr2
	regWriteAddr3			dataWriteToReg			selectOfBranchOrNext		selectOfJumpSource
	branchAddr				jumpAddrFormReg			jumpAddrFromImm				currentCommandAddr
	nextCommandAddr			memOrALUToReg			memWriteEnabled				branchControl
	regWriteAddrSelect		loadWriteMood			linkWhenJump				addrOfDataInMem
	dataWriteToMem			dataGiveToReg
	--------------------------------------------------------------------------------------------------
*/

module ProgramCounter(
		input clk,
		input reset,
		input selectOfBranchOrNext,
		input [1:0] selectOfJumpSource,
		input [31:0] branchAddr,
		input [31:0] jumpAddrFormReg,
		input [31:0] jumpAddrFromImm,
		output reg [31:0] currentCommandAddr,
		output [31:0] nextCommandAddr
	);

	wire [31:0] afterBranchSelect,finalSelectedCommand;

	assign nextCommandAddr=currentCommandAddr+4;
	assign afterBranchSelect=selectOfBranchOrNext?branchAddr:nextCommandAddr;
	assign finalSelectedCommand=selectOfJumpSource[1]?
		(
			selectOfJumpSource[0]?-1:jumpAddrFormReg
		):
		(
			selectOfJumpSource[0]?{nextCommandAddr[31:28],jumpAddrFromImm[25:0],{2{1'b0}}}:afterBranchSelect
		);

	initial currentCommandAddr<=32'h3000;

	always @(posedge clk) begin
		if (reset) currentCommandAddr<=32'h3000;
		else currentCommandAddr<=finalSelectedCommand;
	end

endmodule