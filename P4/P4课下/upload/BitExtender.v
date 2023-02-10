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

module BitExtender(
		input [1:0] extendMood,
		input [15:0] immToExtend,
		output [31:0] immAfterExtend
	);

	assign immAfterExtend=extendMood[1]?
		(extendMood[0]?-1:{{27{1'b0}},immToExtend[10:6]}):
		(extendMood[0]?{{16{1'b0}},immToExtend}:{{16{immToExtend[15]}},immToExtend});

endmodule