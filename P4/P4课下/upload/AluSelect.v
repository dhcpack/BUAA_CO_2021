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

module AluSelect(
		input [31:0] regData1,
		input [31:0] regData2,
		input [31:0] immAfterExtend,
		input [1:0] ALUInputSelect,
		output [31:0] ALUInputA,
		output [31:0] ALUInputB
	);

	assign ALUInputA=ALUInputSelect[1]?immAfterExtend:regData1;
	assign ALUInputB=ALUInputSelect[0]?immAfterExtend:regData2;

endmodule