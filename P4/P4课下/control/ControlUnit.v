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

//Define for Control Unit
	`define lw			6'b100011
	`define sw			6'b101011
	`define lb			6'b100000
	`define lbu			6'b100100
	`define sb			6'b101000
	`define lh			6'b100001
	`define lhu			6'b100101
	`define sh			6'b101001
	`define beq			6'b000100
	`define bne			6'b000101
	`define bgtz		6'b000111
	`define blez		6'b000110
	`define addi		6'b001000
	`define addiu		6'b001001
	`define andi		6'b001100
	`define ori			6'b001101
	`define xori		6'b001110
	`define lui			6'b001111
	`define slti		6'b001010
	`define sltiu		6'b001011
	`define j			6'b000010
	`define jal			6'b000011
	`define add			6'b100000
	`define addu		6'b100001
	`define sub			6'b100010
	`define subu		6'b100011
	`define and			6'b100100
	`define or			6'b100101
	`define slt			6'b101010
	`define nor			6'b100111
	`define xor			6'b100110
	`define sll			6'b000000
	`define srl			6'b000010
	`define sra			6'b000011
	`define sllv		6'b000100
	`define srlv		6'b000110
	`define srav		6'b000111
	`define sltu		6'b101011
	`define jr			6'b001000
	`define jalr		6'b001001
	`define bltz		5'b00000
	`define bgez		5'b00001

module ControlUnit(
		input [31:0] currentCommand,
		output reg memOrALUToReg,
		output reg memWriteEnabled,
		output reg branchControl,
		output reg [4:0] ALUOperation,
		output reg [1:0] ALUInputSelect,
		output reg regWriteAddrSelect,
		output reg regWriteEnabled,
		output reg [2:0] loadWriteMood,
		output reg [1:0] extendMood,
		output reg [1:0] selectOfJumpSource,
		output reg linkWhenJump,
		output reg writeToReg31
	);

	initial begin
		memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0; ALUOperation<=5'b00000; ALUInputSelect<=2'b00; regWriteAddrSelect<=0;
		regWriteEnabled<=0; loadWriteMood<=3'b000; extendMood<=3'b00; selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
	end

	always @(*) begin
		if (|currentCommand==0) begin
			memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
			ALUOperation<=`AandB; ALUInputSelect<=2'b00; regWriteAddrSelect<=0;
			regWriteEnabled<=0; loadWriteMood<=3'b000; extendMood<=3'b00;
			selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
		end
		else if (currentCommand[31:26]==0) begin
			if (currentCommand[5:0]==`add) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AaddB; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			if (currentCommand[5:0]==`addu) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AaddB; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`sub) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AsubB; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`subu) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AsubB; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`and) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AandB; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`or) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AorB; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`slt) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AsignedltB; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`nor) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AnorB; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`xor) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AxorB; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`sll) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`BlogicleftA; ALUInputSelect<=2'b10; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b10;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`srl) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`BlogicrightA; ALUInputSelect<=2'b10; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b10;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`sra) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`BsignedrightA; ALUInputSelect<=2'b10; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b10;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`sllv) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`BlogicleftA; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`srlv) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`BlogicrightA; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`srav) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`BsignedrightA; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`sltu) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AunsignedltB; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`jr) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AandB; ALUInputSelect<=2'b00; regWriteAddrSelect<=0;
				regWriteEnabled<=0; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b10; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[5:0]==`jalr) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AandB; ALUInputSelect<=2'b00; regWriteAddrSelect<=1;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b10; linkWhenJump<=1; writeToReg31<=0;
			end
			else begin end
		end
		else if (currentCommand[31:26]==1) begin
			if (currentCommand[20:16]==`bltz) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=1;
				ALUOperation<=`AltzSet0; ALUInputSelect<=2'b00; regWriteAddrSelect<=0;
				regWriteEnabled<=0; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[20:16]==`bgez) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=1;
				ALUOperation<=`AgezSet0; ALUInputSelect<=2'b00; regWriteAddrSelect<=0;
				regWriteEnabled<=0; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else begin end
		end
		else begin
			if (currentCommand[31:26]==`lw) begin
				memOrALUToReg<=1; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AaddB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`sw) begin
				memOrALUToReg<=0; memWriteEnabled<=1; branchControl<=0;
				ALUOperation<=`AaddB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=0; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`lb) begin
				memOrALUToReg<=1; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AaddB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b101; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`lbu) begin
				memOrALUToReg<=1; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AaddB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b100; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`sb) begin
				memOrALUToReg<=0; memWriteEnabled<=1; branchControl<=0;
				ALUOperation<=`AaddB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=0; loadWriteMood<=3'b100; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`lh) begin
				memOrALUToReg<=1; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AaddB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b011; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`lhu) begin
				memOrALUToReg<=1; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AaddB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b010; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`sh) begin
				memOrALUToReg<=0; memWriteEnabled<=1; branchControl<=0;
				ALUOperation<=`AaddB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=0; loadWriteMood<=3'b010; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`beq) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=1;
				ALUOperation<=`AxorB; ALUInputSelect<=2'b00; regWriteAddrSelect<=0;
				regWriteEnabled<=0; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`bne) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=1;
				ALUOperation<=`AnotBSet0; ALUInputSelect<=2'b00; regWriteAddrSelect<=0;
				regWriteEnabled<=0; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`bgtz) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=1;
				ALUOperation<=`AgtzSet0; ALUInputSelect<=2'b00; regWriteAddrSelect<=0;
				regWriteEnabled<=0; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`blez) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=1;
				ALUOperation<=`AlezSet0; ALUInputSelect<=2'b00; regWriteAddrSelect<=0;
				regWriteEnabled<=0; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`addi) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AaddB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`addiu) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AaddB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`andi) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AandB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b01;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`ori) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AorB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b01;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`xori) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AxorB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b01;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`lui) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`luiB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`slti) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AsignedltB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`sltiu) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AunsignedltB; ALUInputSelect<=2'b01; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`j) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AandB; ALUInputSelect<=2'b00; regWriteAddrSelect<=0;
				regWriteEnabled<=0; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b01; linkWhenJump<=0; writeToReg31<=0;
			end
			else if (currentCommand[31:26]==`jal) begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AandB; ALUInputSelect<=2'b00; regWriteAddrSelect<=0;
				regWriteEnabled<=1; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b01; linkWhenJump<=1; writeToReg31<=1;
			end
			else begin
				memOrALUToReg<=0; memWriteEnabled<=0; branchControl<=0;
				ALUOperation<=`AandB; ALUInputSelect<=2'b00; regWriteAddrSelect<=0;
				regWriteEnabled<=0; loadWriteMood<=3'b000; extendMood<=3'b00;
				selectOfJumpSource<=3'b00; linkWhenJump<=0; writeToReg31<=0;
			end
		end
	end

endmodule