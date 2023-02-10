`timescale 1ns/1ps

`define lw			6'b100011
`define sw			6'b101011
`define lb			6'b100000
`define lbu			6'b100100
`define sb			6'b101000
`define lh			6'b100001
`define lhu			6'b100101
`define sh			6'b101001
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
`define beq			6'b000100
`define bne			6'b000101
`define bgtz		6'b000111
`define blez		6'b000110
`define bltz		5'b00000
`define bgez		5'b00001
`define addi		6'b001000
`define addiu		6'b001001
`define andi		6'b001100
`define ori			6'b001101
`define xori		6'b001110
`define lui			6'b001111
`define slti		6'b001010
`define sltiu		6'b001011
`define j			6'b000010
`define jr			6'b001000
`define jal			6'b000011
`define jalr		6'b001001
`define mfhi		6'b010000
`define mflo		6'b010010
`define mthi		6'b010001
`define mtlo		6'b010011
`define mult		6'b011000
`define multu		6'b011001
`define div			6'b011010
`define divu		6'b011011
`define movz		6'b001010
`define movn		6'b001011
`define bltzal		5'b10000
`define bgezal		5'b10001
`define madd		6'b000000
`define maddu		6'b000001
`define msub		6'b000100
`define msubu		6'b000101
`define clo			6'b100001
`define clz			6'b100000
`define bltzalr		6'b111000
`define bgezalr		6'b111001
`define bloltzalr	6'b101000
`define blogezalr	6'b101001
`define bmltzalr	6'b111110
`define bmgezalr	6'b111111

module ControlUnit(
		input [31:0] currentCommand,
		output [1:0] extendMoodInID,
		output [1:0] aluInputSelectInID,
		output [3:0] aluOperationInID,
		output cuOverFlowInID,
		output cuRegBranchInID,
		output cuMdBranchInID,
		output cuDmBranchInID,
		output [3:0] cmpOperationInID,
		output memWriteEnabledInID,
		output [3:0] loadWriteMoodInID,
		output [1:0] regDstSelectInID,
		output regWriteEnabledInID,
		output regConditionMoveInID,
		output exConditionMoveInID,
		output dmConditionMoveInID,
		output [1:0] pcControlInID,
		output [6:0] dataToRegSelectInID,
		output mulOrDivInID,
		output [3:0] mulDivOperationInID,
		output [2:0] tUseOf2521InID,
		output [2:0] tUseOf2016InID,
		output [2:0] tNewInID
	);

	wire [49:0] packedControl,judgeByUpperSix;
	wire [49:0] judgeByLowerSix,judgeByMiddleFive,judgeByDoubleSix;

	assign extendMoodInID=packedControl[49:48];
	assign aluInputSelectInID=packedControl[47:46];
	assign aluOperationInID=packedControl[45:42];
	assign cuOverFlowInID=packedControl[41];
	assign cuRegBranchInID=packedControl[40];
	assign cuMdBranchInID=packedControl[39];
	assign cuDmBranchInID=packedControl[38];
	assign cmpOperationInID=packedControl[37:34];
	assign memWriteEnabledInID=packedControl[33];
	assign loadWriteMoodInID=packedControl[32:29];
	assign regDstSelectInID=packedControl[28:27];
	assign regWriteEnabledInID=packedControl[26];
	assign regConditionMoveInID=packedControl[25];
	assign exConditionMoveInID=packedControl[24];
	assign dmConditionMoveInID=packedControl[23];
	assign pcControlInID=packedControl[22:21];
	assign dataToRegSelectInID=packedControl[20:14];
	assign mulOrDivInID=packedControl[13];
	assign mulDivOperationInID=packedControl[12:9];
	assign tUseOf2521InID=packedControl[8:6];
	assign tUseOf2016InID=packedControl[5:3];
	assign tNewInID=packedControl[2:0];
	//------------------------------------------------
	assign packedControl=(|currentCommand)?
		(currentCommand[31:26]==0)?judgeByLowerSix:
		(currentCommand[31:26]==1)?judgeByMiddleFive:
		(currentCommand[31:26]==28)?judgeByDoubleSix:
		judgeByUpperSix:50'b0;
	//------------------------------------------------
	assign judgeByUpperSix=(currentCommand[31:26]==`lw)?(50'h000058000780409C):
		(currentCommand[31:26]==`sw)?(50'h0000580200000098):
		(currentCommand[31:26]==`lb)?(50'h00005800A780409C):
		(currentCommand[31:26]==`lbu)?(50'h000058008780409C):
		(currentCommand[31:26]==`sb)?(50'h0000580280000098):
		(currentCommand[31:26]==`lh)?(50'h000058006780409C):
		(currentCommand[31:26]==`lhu)?(50'h000058004780409C):
		(currentCommand[31:26]==`sh)?(50'h0000580240000098):
		(currentCommand[31:26]==`beq)?(50'h0000010000200048):
		(currentCommand[31:26]==`bne)?(50'h0000010400200048):
		(currentCommand[31:26]==`bgtz)?(50'h0000010C00200078):
		(currentCommand[31:26]==`blez)?(50'h0000011000200078):
		(currentCommand[31:26]==`addi)?(50'h00005A00078100BB):
		(currentCommand[31:26]==`addiu)?(50'h00005800078100BB):
		(currentCommand[31:26]==`andi)?(50'h00014000078100BB):
		(currentCommand[31:26]==`ori)?(50'h00014400078100BB):
		(currentCommand[31:26]==`xori)?(50'h00014C00078100BB):
		(currentCommand[31:26]==`lui)?(50'h00030000079001FA):
		(currentCommand[31:26]==`slti)?(50'h00005000078100BB):
		(currentCommand[31:26]==`sltiu)?(50'h00005400078100BB):
		(currentCommand[31:26]==`j)?(50'h00000000004001F8):
		(currentCommand[31:26]==`jal)?(50'h0000000017C001FA):
		(currentCommand[31:26]==`bmltzalr)?(50'h000058541760009C):
		(currentCommand[31:26]==`bmgezalr)?(50'h000058481760009C):50'h0;
	//------------------------------------------------
	assign judgeByLowerSix=(currentCommand[5:0]==`add)?(50'h00001A000F810093):
		(currentCommand[5:0]==`addu)?(50'h000018000F810093):
		(currentCommand[5:0]==`sub)?(50'h00001E000F810093):
		(currentCommand[5:0]==`subu)?(50'h00001C000F810093):
		(currentCommand[5:0]==`and)?(50'h000000000F810093):
		(currentCommand[5:0]==`or)?(50'h000004000F810093):
		(currentCommand[5:0]==`slt)?(50'h000010000F810093):
		(currentCommand[5:0]==`nor)?(50'h000008000F810093):
		(currentCommand[5:0]==`xor)?(50'h00000C000F810093):
		(currentCommand[5:0]==`sll)?(50'h0002A0000F8101D3):
		(currentCommand[5:0]==`srl)?(50'h0002A4000F8101D3):
		(currentCommand[5:0]==`sra)?(50'h0002A8000F8101D3):
		(currentCommand[5:0]==`sllv)?(50'h000020000F810093):
		(currentCommand[5:0]==`srlv)?(50'h000024000F810093):
		(currentCommand[5:0]==`srav)?(50'h000028000F810093):
		(currentCommand[5:0]==`sltu)?(50'h000014000F810093):
		(currentCommand[5:0]==`jr)?(50'h0000000000600078):
		(currentCommand[5:0]==`jalr)?(50'h000000000FE0007A):
		(currentCommand[5:0]==`mfhi)?(50'h000000000F8221FB):
		(currentCommand[5:0]==`mflo)?(50'h000000000F8321FB):
		(currentCommand[5:0]==`mthi)?(50'h00000000000022B8):
		(currentCommand[5:0]==`mtlo)?(50'h00000000000024B8):
		(currentCommand[5:0]==`mult)?(50'h0000000000002A90):
		(currentCommand[5:0]==`multu)?(50'h0000000000002C90):
		(currentCommand[5:0]==`div)?(50'h0000000000002690):
		(currentCommand[5:0]==`divu)?(50'h0000000000002890):
		(currentCommand[5:0]==`movz)?(50'h000000300D8801CA):
		(currentCommand[5:0]==`movn)?(50'h000000340D8801CA):
		(currentCommand[5:0]==`bltzalr)?(50'h000001140DE0004A):
		(currentCommand[5:0]==`bgezalr)?(50'h000001080DE0004A):
		(currentCommand[5:0]==`bloltzalr)?(50'h000000940EE02083):
		(currentCommand[5:0]==`blogezalr)?(50'h000000880EE02083):50'h0;
	//------------------------------------------------
	assign judgeByMiddleFive=(currentCommand[20:16]==`bltz)?(50'h0000011400200078):
		(currentCommand[20:16]==`bgez)?(50'h0000010800200078):
		(currentCommand[20:16]==`bltzal)?(50'h0000011415A0007A):
		(currentCommand[20:16]==`bgezal)?(50'h0000010815A0007A):50'h0;
	//------------------------------------------------
	assign judgeByDoubleSix=(currentCommand[5:0]==`madd)?(50'h0000000000002E90):
		(currentCommand[5:0]==`maddu)?(50'h0000000000003090):
		(currentCommand[5:0]==`msub)?(50'h0000000000003290):
		(currentCommand[5:0]==`msubu)?(50'h0000000000003490):
		(currentCommand[5:0]==`clo)?(50'h00002C000F8100BB):
		(currentCommand[5:0]==`clz)?(50'h000030000F8100BB):50'h0;

endmodule