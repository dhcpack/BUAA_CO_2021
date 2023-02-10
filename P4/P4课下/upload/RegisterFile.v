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

module RegisterFile(
		input clk,
		input reset,
		input writeToReg31,
		input regWriteEnabled,
		input [4:0] regReadAddr1,
		input [4:0] regReadAddr2,
		input [4:0] regWriteAddr3,
		input [31:0] dataWriteToReg,
		input [31:0] currentCommandAddr,
		output [31:0] regData1,
		output [31:0] regData2
	);

	wire [4:0] finalDst; integer i;
	reg [31:0] registerFile[31:0];

	assign finalDst=writeToReg31?5'b11111:regWriteAddr3;
	assign regData1=registerFile[regReadAddr1];
	assign regData2=registerFile[regReadAddr2];

	initial for (i=0;i<32;i=i+1) registerFile[i]<=0;

	always @(posedge clk) begin
		if (reset) for (i=0;i<32;i=i+1) registerFile[i]<=0;
		else if (regWriteEnabled) begin
			if (finalDst) registerFile[finalDst]<=dataWriteToReg; else begin end
			$display("@%08h: $%d <= %08h",currentCommandAddr,finalDst,dataWriteToReg);
		end
		else begin end
	end

endmodule