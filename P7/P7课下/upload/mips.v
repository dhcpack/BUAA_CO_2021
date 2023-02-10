`timescale 1ns/1ps

module mips(
		input clk,
		input reset,
		input interrupt,
		output [31:0] addr
	);

	wire DEBUG_MOOD=1'b0; wire [2:0] loadWriteMood; wire [5:0] interruptRequest;
	wire memWriteEnabled,writeEnabledOfMem,writeEnabledOfTimer1,writeEnabledOfTimer2,interruptFromTimer1,interruptFromTimer2;
	wire [31:0] addrOfDataInTimer1,addrOfDataInTimer2,dataWriteToMem,dataToRegFromTimer1,dataToRegFromTimer2,dataToRegFromMem;
	wire [31:0] addrOfDataInMem,memReadOrWriteAddr,currentCommandAddrToMem,currentCommandToCPU,currentCommandAddrFromCPU,memDataToReg;

	assign interruptRequest=DEBUG_MOOD?6'b0:{3'b0,interrupt,interruptFromTimer2,interruptFromTimer1};

	CentralProcessingUnit mipsCentralProcessingUnit(
		.clk(clk),.reset(reset),
		.debugMood(DEBUG_MOOD),
		.interruptRequest(interruptRequest),
		.memDataToRegInMEM(memDataToReg),
		.currentCommandInIF(currentCommandToCPU),
		.currentCommandAddrInIF(currentCommandAddrFromCPU),
		.loadWriteMoodInMEM(loadWriteMood),
		.memReadOrWriteAddr(memReadOrWriteAddr),
		.memWriteEnabledInMEM(memWriteEnabled),
		.dataWriteToMemInMEM(dataWriteToMem),
		.currentCommandAddrInMEM(currentCommandAddrToMem),
		.commandAddrToCP0InEX(addr)
	);

	SystemBridge mipsSystemBridge(
		.memReadOrWriteAddr(memReadOrWriteAddr),
		.memWriteEnabled(memWriteEnabled),
		.addrOfDataInMem(addrOfDataInMem),
		.addrOfDataInTimer1(addrOfDataInTimer1),
		.addrOfDataInTimer2(addrOfDataInTimer2),
		.writeEnabledOfMem(writeEnabledOfMem),
		.writeEnabledOfTimer1(writeEnabledOfTimer1),
		.writeEnabledOfTimer2(writeEnabledOfTimer2),
		.dataToRegFromMem(dataToRegFromMem),
		.dataToRegFromTimer1(dataToRegFromTimer1),
		.dataToRegFromTimer2(dataToRegFromTimer2),
		.memDataToReg(memDataToReg)
	);

	InstructionMemory mipsInstructionMemory(
		.currentCommandAddr(currentCommandAddrFromCPU),
		.currentCommand(currentCommandToCPU)
	);

	DataMemory mipsDataMemory(
		.clk(clk),.reset(reset),
		.loadWriteMood(loadWriteMood),
		.addrOfDataInMem(addrOfDataInMem),
		.memWriteEnabled(writeEnabledOfMem),
		.dataWriteToMem(dataWriteToMem),
		.currentCommandAddr(currentCommandAddrToMem),
		.dataGiveToReg(dataToRegFromMem)
	);

	StandardTimer mipsStandardTimer1(
		.clk(clk),.reset(reset),
		.debugMood(DEBUG_MOOD),
		.timerAddr(addrOfDataInTimer1),
		.timerWriteEnabled(writeEnabledOfTimer1),
		.dataToTimer(dataWriteToMem),
		.currentCommandAddr(currentCommandAddrToMem),
		.dataFromTimer(dataToRegFromTimer1),
		.interruptRequest(interruptFromTimer1)
	);

	StandardTimer mipsStandardTimer2(
		.clk(clk),.reset(reset),
		.debugMood(DEBUG_MOOD),
		.timerAddr(addrOfDataInTimer2),
		.timerWriteEnabled(writeEnabledOfTimer2),
		.dataToTimer(dataWriteToMem),
		.currentCommandAddr(currentCommandAddrToMem),
		.dataFromTimer(dataToRegFromTimer2),
		.interruptRequest(interruptFromTimer2)
	);

endmodule