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
`define mfc0		5'b00000
`define mtc0		5'b00100
`define eret		6'b011000

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
		output [2:0] loadWriteMoodInID,
		output [1:0] regDstSelectInID,
		output regWriteEnabledInID,
		output regConditionMoveInID,
		output exConditionMoveInID,
		output dmConditionMoveInID,
		output writeEnabledOfCP0InID,
		output [1:0] pcControlInID,
		output [5:0] dataToRegSelectInID,
		output mulOrDivInID,
		output [3:0] mulDivOperationInID,
		output knowCommandInID,
		output toFlushCP0InID,
		output [2:0] tUseOf2521InID,
		output [2:0] tUseOf2016InID,
		output [2:0] tNewInID
	);

	wire [50:0] packedControl,judgeByUpperSix,judgeSpecialType;
	wire [50:0] judgeByLowerSix,judgeByMiddleFive,judgeByDoubleSix;

	assign extendMoodInID=packedControl[50:49];
	assign aluInputSelectInID=packedControl[48:47];
	assign aluOperationInID=packedControl[46:43];
	assign cuOverFlowInID=packedControl[42];
	assign cuRegBranchInID=packedControl[41];
	assign cuMdBranchInID=packedControl[40];
	assign cuDmBranchInID=packedControl[39];
	assign cmpOperationInID=packedControl[38:35];
	assign memWriteEnabledInID=packedControl[34];
	assign loadWriteMoodInID=packedControl[33:31];
	assign regDstSelectInID=packedControl[30:29];
	assign regWriteEnabledInID=packedControl[28];
	assign regConditionMoveInID=packedControl[27];
	assign exConditionMoveInID=packedControl[26];
	assign dmConditionMoveInID=packedControl[25];
	assign writeEnabledOfCP0InID=packedControl[24];
	assign pcControlInID=packedControl[23:22];
	assign dataToRegSelectInID=packedControl[21:16];
	assign mulOrDivInID=packedControl[15];
	assign mulDivOperationInID=packedControl[14:11];
	assign knowCommandInID=packedControl[10];
	assign toFlushCP0InID=packedControl[9];
	assign tUseOf2521InID=packedControl[8:6];
	assign tUseOf2016InID=packedControl[5:3];
	assign tNewInID=packedControl[2:0];
	//------------------------------------------------
	assign packedControl=(currentCommand[31:26]==0)?judgeByLowerSix:
		(currentCommand[31:26]==1)?judgeByMiddleFive:
		(currentCommand[31:26]==28)?judgeByDoubleSix:
		(currentCommand[31:26]==16)?judgeSpecialType:judgeByUpperSix;
	//------------------------------------------------
	assign judgeByUpperSix=(currentCommand[31:26]==`lw)?(51'h0000B0001E01049C):
		(currentCommand[31:26]==`sw)?(51'h0000B004000004B8):
		(currentCommand[31:26]==`lb)?(51'h0000B0029E01049C):
		(currentCommand[31:26]==`lbu)?(51'h0000B0021E01049C):
		(currentCommand[31:26]==`sb)?(51'h0000B006000004B8):
		(currentCommand[31:26]==`lh)?(51'h0000B0019E01049C):
		(currentCommand[31:26]==`lhu)?(51'h0000B0011E01049C):
		(currentCommand[31:26]==`sh)?(51'h0000B005000004B8):
		(currentCommand[31:26]==`beq)?(51'h0000020000400448):
		(currentCommand[31:26]==`bne)?(51'h0000020800400448):
		(currentCommand[31:26]==`bgtz)?(51'h0000021800400478):
		(currentCommand[31:26]==`blez)?(51'h0000022000400478):
		(currentCommand[31:26]==`addi)?(51'h0000B4001E0204BB):
		(currentCommand[31:26]==`addiu)?(51'h0000B0001E0204BB):
		(currentCommand[31:26]==`andi)?(51'h000280001E0204BB):
		(currentCommand[31:26]==`ori)?(51'h000288001E0204BB):
		(currentCommand[31:26]==`xori)?(51'h000298001E0204BB):
		(currentCommand[31:26]==`lui)?(51'h000600001E2005FA):
		(currentCommand[31:26]==`slti)?(51'h0000A0001E0204BB):
		(currentCommand[31:26]==`sltiu)?(51'h0000A8001E0204BB):
		(currentCommand[31:26]==`j)?(51'h00000000008005F8):
		(currentCommand[31:26]==`jal)?(51'h000000005E8005FA):51'h0;
	//------------------------------------------------
	assign judgeByLowerSix=(currentCommand[5:0]==`add)?(51'h000034003E020493):
		(currentCommand[5:0]==`addu)?(51'h000030003E020493):
		(currentCommand[5:0]==`sub)?(51'h00003C003E020493):
		(currentCommand[5:0]==`subu)?(51'h000038003E020493):
		(currentCommand[5:0]==`and)?(51'h000000003E020493):
		(currentCommand[5:0]==`or)?(51'h000008003E020493):
		(currentCommand[5:0]==`slt)?(51'h000020003E020493):
		(currentCommand[5:0]==`nor)?(51'h000010003E020493):
		(currentCommand[5:0]==`xor)?(51'h000018003E020493):
		(currentCommand[5:0]==`sll)?(51'h000540003E0205D3):
		(currentCommand[5:0]==`srl)?(51'h000548003E0205D3):
		(currentCommand[5:0]==`sra)?(51'h000550003E0205D3):
		(currentCommand[5:0]==`sllv)?(51'h000040003E020493):
		(currentCommand[5:0]==`srlv)?(51'h000048003E020493):
		(currentCommand[5:0]==`srav)?(51'h000050003E020493):
		(currentCommand[5:0]==`sltu)?(51'h000028003E020493):
		(currentCommand[5:0]==`jr)?(51'h0000000000C00478):
		(currentCommand[5:0]==`jalr)?(51'h000000003EC0047A):
		(currentCommand[5:0]==`mfhi)?(51'h000000003E0485FB):
		(currentCommand[5:0]==`mflo)?(51'h000000003E0685FB):
		(currentCommand[5:0]==`mthi)?(51'h0000000000008CB8):
		(currentCommand[5:0]==`mtlo)?(51'h00000000000094B8):
		(currentCommand[5:0]==`mult)?(51'h000000000000AC90):
		(currentCommand[5:0]==`multu)?(51'h000000000000B490):
		(currentCommand[5:0]==`div)?(51'h0000000000009C90):
		(currentCommand[5:0]==`divu)?(51'h000000000000A490):51'h0;
	//------------------------------------------------
	assign judgeByMiddleFive=(currentCommand[20:16]==`bltz)?(51'h0000022800400478):
		(currentCommand[20:16]==`bgez)?(51'h0000021000400478):51'h0;
	//------------------------------------------------
	assign judgeSpecialType=(currentCommand[25:21]==`mfc0)?(51'h000000001E0805FB):
		(currentCommand[25:21]==`mtc0)?(51'h00000000010005D0):
		(currentCommand[5:0]==`eret)?(51'h00000000000007F8):51'h0;
	//------------------------------------------------
	assign judgeByDoubleSix=51'h0;

endmodule