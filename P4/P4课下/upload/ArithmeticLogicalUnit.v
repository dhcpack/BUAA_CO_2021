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

//Define for ALU
	`define AandB			0
	`define AorB			1
	`define AaddB			2
	`define AxorB			3
	`define AgtzSet0		4
	`define AltzSet0		5
	`define AsubB			6
	`define AsignedltB		7
	`define AgezSet0		8
	`define BlogicleftA		9
	`define BlogicrightA	10
	`define BsignedrightA	11
	`define AnorB			12
	`define AnotBSet0		13
	`define AunsignedltB	14
	`define AlezSet0		15
	`define luiB			16

module ArithmeticLogicalUnit(
		input [31:0] ALUInputA,
		input [31:0] ALUInputB,
		input [4:0] ALUOperation,
		output reg [31:0] ALUOutput,
		output ALUIsZero
	);

	assign ALUIsZero=ALUOutput==0;

	initial ALUOutput<=0;

	always @(*) begin
		if (ALUOperation==`AandB) ALUOutput<=ALUInputA&ALUInputB;
		else if (ALUOperation==`AorB) ALUOutput<=ALUInputA|ALUInputB;
		else if (ALUOperation==`AaddB) ALUOutput<=ALUInputA+ALUInputB;
		else if (ALUOperation==`AxorB) ALUOutput<=ALUInputA^ALUInputB;
		else if (ALUOperation==`AgtzSet0) ALUOutput<={{31{1'b0}},~($signed(ALUInputA)>0)};
		else if (ALUOperation==`AltzSet0) ALUOutput<={{31{1'b0}},~($signed(ALUInputA)<0)};
		else if (ALUOperation==`AsubB) ALUOutput<=ALUInputA-ALUInputB;
		else if (ALUOperation==`AsignedltB) ALUOutput<={{31{1'b0}},$signed(ALUInputA)<$signed(ALUInputB)};
		else if (ALUOperation==`AgezSet0) ALUOutput<={{31{1'b0}},~($signed(ALUInputA)>=0)};
		else if (ALUOperation==`BlogicleftA) ALUOutput<=ALUInputB<<ALUInputA[4:0];
		else if (ALUOperation==`BlogicrightA) ALUOutput<=ALUInputB>>ALUInputA[4:0];
		else if (ALUOperation==`BsignedrightA) ALUOutput<=$signed($signed(ALUInputB)>>>$signed(ALUInputA[4:0]));
		else if (ALUOperation==`AnorB) ALUOutput<=~(ALUInputA|ALUInputB);
		else if (ALUOperation==`AnotBSet0) ALUOutput<={{31{1'b0}},ALUInputA==ALUInputB};
		else if (ALUOperation==`AunsignedltB) ALUOutput<={{31{1'b0}},ALUInputA<ALUInputB};
		else if (ALUOperation==`AlezSet0) ALUOutput<={{31{1'b0}},~($signed(ALUInputA)<=0)};
		else if (ALUOperation==`luiB) ALUOutput<=ALUInputB<<16;
		else ALUOutput<=-1;
	end

endmodule