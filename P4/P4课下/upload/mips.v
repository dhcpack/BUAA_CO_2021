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

module CentrolProcessingUnit(
		input clk,
		input reset,
		input [31:0] currentCommand,
		output [31:0] currentCommandAddr,
		input [31:0] dataGiveToReg,
		output memWriteEnabled,
		output [2:0] loadWriteMood,
		output [31:0] addrOfDataInMem,
		output [31:0] dataWriteToMem
	);

	wire [4:0] ALUOperation;
	wire [1:0] ALUInputSelect,extendMood,selectOfJumpSource;
	wire [31:0] regData1,regData2,nextCommandAddr;
	wire [31:0] ALUInputA,ALUInputB,immAfterExtend,ALUOutput;
	wire memOrALUToReg,branchControl,ALUIsZero;
	wire regWriteAddrSelect,regWriteEnabled,linkWhenJump,writeToReg31;

	assign dataWriteToMem=regData2;
	assign addrOfDataInMem=ALUOutput;

	ControlUnit MainControlUnit(
			.currentCommand(currentCommand),
			.memOrALUToReg(memOrALUToReg),
			.memWriteEnabled(memWriteEnabled),
			.branchControl(branchControl),
			.ALUOperation(ALUOperation),
			.ALUInputSelect(ALUInputSelect),
			.regWriteAddrSelect(regWriteAddrSelect),
			.regWriteEnabled(regWriteEnabled),
			.loadWriteMood(loadWriteMood),
			.extendMood(extendMood),
			.selectOfJumpSource(selectOfJumpSource),
			.linkWhenJump(linkWhenJump),
			.writeToReg31(writeToReg31)
		);

	RegisterFile MainRegisterFile(
			.clk(clk),
			.reset(reset),
			.writeToReg31(writeToReg31),
			.regWriteEnabled(regWriteEnabled),
			.regReadAddr1(currentCommand[25:21]),
			.regReadAddr2(currentCommand[20:16]),
			.regWriteAddr3(regWriteAddrSelect?currentCommand[15:11]:currentCommand[20:16]),
			.dataWriteToReg(linkWhenJump?nextCommandAddr:(memOrALUToReg?dataGiveToReg:ALUOutput)),
			.currentCommandAddr(currentCommandAddr),
			.regData1(regData1),
			.regData2(regData2)
		);

	AluSelect MainAluSelect(
			.regData1(regData1),
			.regData2(regData2),
			.immAfterExtend(immAfterExtend),
			.ALUInputSelect(ALUInputSelect),
			.ALUInputA(ALUInputA),
			.ALUInputB(ALUInputB)
		);

	ArithmeticLogicalUnit MainALU(
			.ALUInputA(ALUInputA),
			.ALUInputB(ALUInputB),
			.ALUOperation(ALUOperation),
			.ALUOutput(ALUOutput),
			.ALUIsZero(ALUIsZero)
		);

	ProgramCounter MainProgramCounter(
			.clk(clk),
			.reset(reset),
			.selectOfBranchOrNext(branchControl&ALUIsZero),
			.selectOfJumpSource(selectOfJumpSource),
			.branchAddr((immAfterExtend<<2)+nextCommandAddr),
			.jumpAddrFormReg(regData1),
			.jumpAddrFromImm(currentCommand),
			.currentCommandAddr(currentCommandAddr),
			.nextCommandAddr(nextCommandAddr)
		);

	BitExtender MainBitExtender(
			.immToExtend(currentCommand[15:0]),
			.extendMood(extendMood),
			.immAfterExtend(immAfterExtend)
		);

endmodule

module mips(
		input clk,
		input reset
	);

	wire [31:0] addrOfDataInMem,dataWriteToMem;
	wire memWriteEnabled; wire [2:0] loadWriteMood;
	wire [31:0] currentCommand,currentCommandAddr,dataGiveToReg;

	InstructionMemory MainInstructionMemory(
			.currentCommandAddr(currentCommandAddr),
			.currentCommand(currentCommand)
		);

	DataMemory MainDataMemory(
			.clk(clk),
			.reset(reset),
			.loadWriteMood(loadWriteMood),
			.addrOfDataInMem(addrOfDataInMem),
			.memWriteEnabled(memWriteEnabled),
			.dataWriteToMem(dataWriteToMem),
			.currentCommandAddr(currentCommandAddr),
			.dataGiveToReg(dataGiveToReg)
		);

	CentrolProcessingUnit MainCentrolProcessingUnit(
			.clk(clk),
			.reset(reset),
			.currentCommand(currentCommand),
			.currentCommandAddr(currentCommandAddr),
			.dataGiveToReg(dataGiveToReg),
			.memWriteEnabled(memWriteEnabled),
			.loadWriteMood(loadWriteMood),
			.addrOfDataInMem(addrOfDataInMem),
			.dataWriteToMem(dataWriteToMem)
		);

endmodule