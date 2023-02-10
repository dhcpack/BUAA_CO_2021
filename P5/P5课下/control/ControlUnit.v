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
`define movz		6'b001010
`define movn		6'b001011
`define bltzal		5'b10000
`define bgezal		5'b10001
`define bltzalr		6'b111000
`define bgezalr		6'b111001
`define bmltzalr	6'b111110
`define bmgezalr	6'b111111

module ControlUnit(
		input [31:0] currentCommand,
		output [1:0] extendMoodInID,
		output [1:0] aluInputSelectInID,
		output [3:0] aluOperationInID,
		output cuOverFlowInID,
		output cuRegBranchInID,
		output cuDmBranchInID,
		output [3:0] cmpOperationInID,
		output memWriteEnabledInID,
		output [3:0] loadWriteMoodInID,
		output [1:0] regDstSelectInID,
		output regWriteEnabledInID,
		output regConditionMoveInID,
		output dmConditionMoveInID,
		output [1:0] pcControlInID,
		output [5:0] dataToRegSelectInID,
		output [2:0] tUseOf2521InID,
		output [2:0] tUseOf2016InID,
		output [2:0] tNewInID
	);

	wire [41:0] packedControl,judgeByUpperSix;
	wire [41:0] judgeByLowerSix,judgeByMiddleFive;

	assign extendMoodInID=packedControl[41:40];
	assign aluInputSelectInID=packedControl[39:38];
	assign aluOperationInID=packedControl[37:34];
	assign cuOverFlowInID=packedControl[33];
	assign cuRegBranchInID=packedControl[32];
	assign cuDmBranchInID=packedControl[31];
	assign cmpOperationInID=packedControl[30:27];
	assign memWriteEnabledInID=packedControl[26];
	assign loadWriteMoodInID=packedControl[25:22];
	assign regDstSelectInID=packedControl[21:20];
	assign regWriteEnabledInID=packedControl[19];
	assign regConditionMoveInID=packedControl[18];
	assign dmConditionMoveInID=packedControl[17];
	assign pcControlInID=packedControl[16:15];
	assign dataToRegSelectInID=packedControl[14:9];
	assign tUseOf2521InID=packedControl[8:6];
	assign tUseOf2016InID=packedControl[5:3];
	assign tNewInID=packedControl[2:0];
	//------------------------------------------------
	assign packedControl=(|currentCommand)?
		(currentCommand[31:26]==0)?judgeByLowerSix:
		(currentCommand[31:26]==1)?judgeByMiddleFive:
		judgeByUpperSix:42'b0;
	//------------------------------------------------
	assign judgeByUpperSix=(currentCommand[31:26]==`lw)?(42'h058000E029C):
		(currentCommand[31:26]==`sw)?(42'h05804000098):
		(currentCommand[31:26]==`lb)?(42'h058014E029C):
		(currentCommand[31:26]==`lbu)?(42'h058010E029C):
		(currentCommand[31:26]==`sb)?(42'h05805000098):
		(currentCommand[31:26]==`lh)?(42'h05800CE029C):
		(currentCommand[31:26]==`lhu)?(42'h058008E029C):
		(currentCommand[31:26]==`sh)?(42'h05804800098):
		(currentCommand[31:26]==`beq)?(42'h00100008048):
		(currentCommand[31:26]==`bne)?(42'h00108008048):
		(currentCommand[31:26]==`bgtz)?(42'h00118008078):
		(currentCommand[31:26]==`blez)?(42'h00120008078):
		(currentCommand[31:26]==`addi)?(42'h05A000E08BB):
		(currentCommand[31:26]==`addiu)?(42'h058000E08BB):
		(currentCommand[31:26]==`andi)?(42'h140000E08BB):
		(currentCommand[31:26]==`ori)?(42'h144000E08BB):
		(currentCommand[31:26]==`xori)?(42'h14C000E08BB):
		(currentCommand[31:26]==`lui)?(42'h300000E41FA):
		(currentCommand[31:26]==`slti)?(42'h050000E08BB):
		(currentCommand[31:26]==`sltiu)?(42'h054000E08BB):
		(currentCommand[31:26]==`j)?(42'h000000101F8):
		(currentCommand[31:26]==`jal)?(42'h000002F01FA):
		(currentCommand[31:26]==`bmltzalr)?(42'h058A96D809C):
		(currentCommand[31:26]==`bmgezalr)?(42'h058916D809C):42'h0;
	//------------------------------------------------
	assign judgeByLowerSix=(currentCommand[5:0]==`add)?(42'h01A001E0893):
		(currentCommand[5:0]==`addu)?(42'h018001E0893):
		(currentCommand[5:0]==`sub)?(42'h01E001E0893):
		(currentCommand[5:0]==`subu)?(42'h01C001E0893):
		(currentCommand[5:0]==`and)?(42'h000001E0893):
		(currentCommand[5:0]==`or)?(42'h004001E0893):
		(currentCommand[5:0]==`slt)?(42'h010001E0893):
		(currentCommand[5:0]==`nor)?(42'h008001E0893):
		(currentCommand[5:0]==`xor)?(42'h00C001E0893):
		(currentCommand[5:0]==`sll)?(42'h2A0001E09D3):
		(currentCommand[5:0]==`srl)?(42'h2A4001E09D3):
		(currentCommand[5:0]==`sra)?(42'h2A8001E09D3):
		(currentCommand[5:0]==`sllv)?(42'h020001E0893):
		(currentCommand[5:0]==`srlv)?(42'h024001E0893):
		(currentCommand[5:0]==`srav)?(42'h028001E0893):
		(currentCommand[5:0]==`sltu)?(42'h014001E0893):
		(currentCommand[5:0]==`jr)?(42'h00000018078):
		(currentCommand[5:0]==`jalr)?(42'h000001F807A):
		(currentCommand[5:0]==`movz)?(42'h000601A21CA):
		(currentCommand[5:0]==`movn)?(42'h000681A21CA):
		(currentCommand[5:0]==`bltzalr)?(42'h001281B804A):
		(currentCommand[5:0]==`bgezalr)?(42'h001101B804A):42'h0;
	//------------------------------------------------
	assign judgeByMiddleFive=(currentCommand[20:16]==`bltz)?(42'h00128008078):
		(currentCommand[20:16]==`bgez)?(42'h00110008078):
		(currentCommand[20:16]==`bltzal)?(42'h001282A807A):
		(currentCommand[20:16]==`bgezal)?(42'h001102A807A):42'h0;

endmodule