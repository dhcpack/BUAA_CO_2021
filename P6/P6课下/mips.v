`timescale 1ns/1ps

module mips(
		input clk,
		input reset
	);

	wire stallAndFlush,overFlow; wire [31:0] currentCommandInIF,currentCommandAddrInIF,nextCommandAddrInIF;
	//------------------------------------------------
	wire [31:0] currentCommandInID,currentCommandAddrInID,dataWriteToRegInID;
	wire cuOverFlowInID,mulOrDivInID,exConditionMoveInID,cuMdBranchInID; wire [1:0] extendMoodInID,pcControlInID;
	wire [2:0] tNewInID,tUseOf2521InID,tUseOf2016InID; wire [1:0] aluInputSelectInID,regDstSelectInID; wire [4:0] regFinalDstInID;
	wire [3:0] loadWriteMoodInID,aluOperationInID,cmpOperationInID,forwardInID,mulDivOperationInID; wire [6:0] dataToRegSelectInID;
	wire [31:0] immAfterExtendInID,regReadData1InID,regReadData2InID,nextCommandAddrInID,regData1ForwardedInID,regData2ForwardedInID;
	wire regConditionMoveInID,memWriteEnabledInID,regWriteEnabledInID,cmpToBranchInID,dmConditionMoveInID,cuRegBranchInID,cuDmBranchInID;
	//------------------------------------------------
	wire [3:0] aluOperationInEX,cmpOperationInEX,loadWriteMoodInEX,forwardInEX,mulDivOperationInEX;
	wire [2:0] tNewInEX; wire [31:0] dataFromHIInEX,dataFromLOInEX; wire [4:0] regFinalDstInEX,dataToRegSelectInEX;
	wire cuDmBranchInEX,dmConditionMoveInEX,mdBusyInEX,mdStartInEX,cmpToBranchInEX,exConditionMoveInEX,cuMdBranchInEX;
	wire aluOverFlowInEX,memWriteEnabledInEX,regWriteEnabledInEX,cuOverFlowInEX; wire [1:0] aluInputSelectInEX,pcControlInEX;
	wire [31:0] regReadData1InEX,regReadData2InEX,immAfterExtendInEX,aluInputAInEX,aluInputBInEX,currentCommandInEX,branchAddrInEX;
	wire [31:0] aluOutputInEX,regData1ForwardedInEX,regData2ForwardedInEX,currentCommandAddrInEX,dataWriteToRegFormIDInEX,dataWriteToRegInEX;
	//------------------------------------------------
	wire [31:0] aluOutputInMEM,currentCommandInMEM,currentCommandAddrInMEM,branchAddrInMEM,dataWriteToRegFormEXInMEM;
	wire [2:0] tNewInMEM; wire [3:0] cmpOperationInMEM,loadWriteMoodInMEM; wire [1:0] pcControlInMEM,forwardInMEM,dataToRegSelectInMEM;
	wire memOrALUToRegInMEM,memWriteEnabledInMEM,regWriteEnabledInMEM,cuDmBranchInMEM,dmConditionMoveInMEM; wire [4:0] regFinalDstInMEM;
	wire [31:0] regReadData1InMEM,regReadData2InMEM,regData1ForwardedInMEM,regData2ForwardedInMEM,dataWriteToRegInMEM,memDataToRegInMEM;
	//------------------------------------------------
	wire memOrALUToRegInWB,regWriteEnabledInWB; wire [1:0] addrOfDataInWB; wire [3:0] loadWriteMoodInWB;
	wire [31:0] currentCommandAddrInWB,dataWriteToRegFormMEMInWB,dataWriteToRegInWB; wire [4:0] regFinalDstInWB;

	assign overFlow=cuOverFlowInEX&aluOverFlowInEX;

	RiskSolveUnit mipsRiskSolveUnit(
		.tNewInEX(tNewInEX),
		.tNewInMEM(tNewInMEM),
		.tUseOf2521InID(tUseOf2521InID),
		.tUseOf2016InID(tUseOf2016InID),
		.currentCommand2521InID(currentCommandInID[25:21]),
		.currentCommand2016InID(currentCommandInID[20:16]),
		.currentCommand2521InEX(currentCommandInEX[25:21]),
		.currentCommand2016InEX(currentCommandInEX[20:16]),
		.currentCommand2521InMEM(currentCommandInMEM[25:21]),
		.currentCommand2016InMEM(currentCommandInMEM[20:16]),
		.regWriteEnabledInEX(regWriteEnabledInEX),
		.regConditionMoveInEX(dmConditionMoveInEX&exConditionMoveInEX),
		.regWriteEnabledInMEM(regWriteEnabledInMEM),
		.regConditionMoveInMEM(dmConditionMoveInMEM),
		.regWriteEnabledInWB(regWriteEnabledInWB),
		.regFinalDstInEX(regFinalDstInEX),
		.regFinalDstInMEM(regFinalDstInMEM),
		.regFinalDstInWB(regFinalDstInWB),
		.toMulOrDivInID(mulOrDivInID),
		.runMulOrDivInEX(mdBusyInEX|mdStartInEX),
		.forwardInID(forwardInID),
		.forwardInEX(forwardInEX),
		.forwardInMEM(forwardInMEM),
		.stallAndFlush(stallAndFlush)
	);

	ProgramCounter mipsProgramCounter(
		.clk(clk),.reset(reset),
		.pcEnabled(stallAndFlush),
		.pcControlInID(cuDmBranchInID?2'b0:cuMdBranchInID?2'b0:pcControlInID),
		.pcControlInEX(cuDmBranchInEX?2'b0:pcControlInEX),
		.pcControlInMEM(pcControlInMEM),
		.toBranchInID(cuRegBranchInID&cmpToBranchInID),
		.cuRegBranchInID(cuRegBranchInID),
		.toBranchInEX(cuMdBranchInEX&cmpToBranchInEX),
		.cuMdBranchInEX(cuMdBranchInEX),
		.toBranchInMEM(cuDmBranchInMEM&cmpToBranchInMEM),
		.cuDmBranchInMEM(cuDmBranchInMEM),
		.branchAddrInID((immAfterExtendInID<<2)+nextCommandAddrInID),
		.branchAddrInEX(32'h00003000),
		.branchAddrInMEM(32'h00003000),
		.jumpAddrFromImm(currentCommandInID[25:0]),
		.jumpAddrFormReg1InID(regData1ForwardedInID),
		.jumpAddrFormReg2InID(regData2ForwardedInID),
		.jumpAddrFormReg1InEX(regData1ForwardedInEX),
		.jumpAddrFormReg2InEX(regData2ForwardedInEX),
		.jumpAddrFormReg1InMEM(regData1ForwardedInMEM),
		.jumpAddrFormReg2InMEM(regData2ForwardedInMEM),
		.currentCommandAddr(currentCommandAddrInIF),
		.nextCommandAddr(nextCommandAddrInIF)
	);

	InstructionMemory mipsInstructionMemory(
		.currentCommandAddr(currentCommandAddrInIF),
		.currentCommand(currentCommandInIF)
	);

	FlowReg_IF_ID mipsFlowReg_IF_ID(
		.clk(clk),
		.resetOf_IF_ID(reset|(cuMdBranchInEX&cmpToBranchInEX)|(cuDmBranchInMEM&cmpToBranchInMEM)),
		.stallOf_IF_ID(stallAndFlush),
		.currentCommandInIF(currentCommandInIF),
		.currentCommandAddrInIF(currentCommandAddrInIF),
		.nextCommandAddrInIF(nextCommandAddrInIF),
		.currentCommandInID(currentCommandInID),
		.currentCommandAddrInID(currentCommandAddrInID),
		.nextCommandAddrInID(nextCommandAddrInID)
	);

	ControlUnit mipsControlUnit(
		.currentCommand(currentCommandInID),
		.extendMoodInID(extendMoodInID),
		.aluInputSelectInID(aluInputSelectInID),
		.aluOperationInID(aluOperationInID),
		.cuOverFlowInID(cuOverFlowInID),
		.cuRegBranchInID(cuRegBranchInID),
		.cuMdBranchInID(cuMdBranchInID),
		.cuDmBranchInID(cuDmBranchInID),
		.cmpOperationInID(cmpOperationInID),
		.memWriteEnabledInID(memWriteEnabledInID),
		.loadWriteMoodInID(loadWriteMoodInID),
		.regDstSelectInID(regDstSelectInID),
		.regWriteEnabledInID(regWriteEnabledInID),
		.regConditionMoveInID(regConditionMoveInID),
		.exConditionMoveInID(exConditionMoveInID),
		.dmConditionMoveInID(dmConditionMoveInID),
		.pcControlInID(pcControlInID),
		.dataToRegSelectInID(dataToRegSelectInID),
		.mulOrDivInID(mulOrDivInID),
		.mulDivOperationInID(mulDivOperationInID),
		.tUseOf2521InID(tUseOf2521InID),
		.tUseOf2016InID(tUseOf2016InID),
		.tNewInID(tNewInID)
	);

	RegisterFile mipsRegisterFile(
		.clk(clk),.reset(reset),
		.regWriteEnabled(regWriteEnabledInWB),
		.regReadAddr1(currentCommandInID[25:21]),
		.regReadAddr2(currentCommandInID[20:16]),
		.regWriteAddr(regFinalDstInWB),
		.dataWriteToReg(dataWriteToRegInWB),
		.currentCommandAddr(currentCommandAddrInWB),
		.regReadData1(regReadData1InID),
		.regReadData2(regReadData2InID)
	);

	RegDstSelect mipsRegDstSelect(
		.currentCommand2016(currentCommandInID[20:16]),
		.currentCommand1511(currentCommandInID[15:11]),
		.regDstSelect(regDstSelectInID),
		.regFinalDst(regFinalDstInID)
	);

	BitExtender mipsBitExtender(
		.extendMood(extendMoodInID),
		.immToExtend(currentCommandInID[15:0]),
		.immAfterExtend(immAfterExtendInID)
	);

	DoubleForwardSelect mipsDataForwardSelectInID(
		.srcDataA(regReadData1InID),
		.srcDataB(regReadData2InID),
		.dataCanUseEarlier(dataWriteToRegFormIDInEX),
		.dataCanUseLater(dataWriteToRegFormEXInMEM),
		.dataForwardSelect(forwardInID),
		.dataASelected(regData1ForwardedInID),
		.dataBSelected(regData2ForwardedInID)
	);

	CompareUnit mipsCompareUnitInID(
		.cmpInputA(regData1ForwardedInID),
		.cmpInputB(regData2ForwardedInID),
		.cmpOperation(cmpOperationInID),
		.toBranch(cmpToBranchInID)
	);

	FourDataToRegSelect mipsDataWriteToRegSelectInID(
		.dataToSelectBy0(nextCommandAddrInID+4),
		.dataToSelectBy1(regReadData1InID),
		.dataToSelectBy2(immAfterExtendInID),
		.dataToSelectBy3(32'h00000000),
		.dataToRegSelect(dataToRegSelectInID[6:5]),
		.dataWriteToReg(dataWriteToRegInID)
	);

	reg previousStalled; initial previousStalled<=0;
	always @(posedge clk) previousStalled<=stallAndFlush;

	FlowReg_ID_EX mipsFlowReg_ID_EX(
		.clk(clk),
		.resetOf_ID_EX(reset|stallAndFlush|(cuDmBranchInMEM&cmpToBranchInMEM&(~previousStalled))),
		.stallOf_ID_EX(1'b0),
		.tNewInID(tNewInID),
		.currentCommandInID(currentCommandInID),
		.currentCommandAddrInID(currentCommandAddrInID),
		.aluOperationInID(aluOperationInID),
		.aluInputSelectInID(aluInputSelectInID),
		.cuOverFlowInID(cuOverFlowInID),
		.immAfterExtendInID(immAfterExtendInID),
		.cuDmBranchInID(cuDmBranchInID),
		.cmpOperationInID(cmpOperationInID),
		.dmConditionMoveInID(dmConditionMoveInID),
		.memWriteEnabledInID(memWriteEnabledInID),
		.loadWriteMoodInID(loadWriteMoodInID),
		.pcControlInID(pcControlInID),
		.dataToRegSelectInID(dataToRegSelectInID[4:0]),
		.regFinalDstInID(regFinalDstInID),
		.regWriteEnabledInID(regWriteEnabledInID&(cmpToBranchInID|regConditionMoveInID)),
		.dataWriteToRegInID(dataWriteToRegInID),
		.regData1ForwardedInID(regData1ForwardedInID),
		.regData2ForwardedInID(regData2ForwardedInID),
		.mulDivOperationInID(mulDivOperationInID),
		.exConditionMoveInID(exConditionMoveInID),
		.cuMdBranchInID(cuMdBranchInID),
		.tNewInEX(tNewInEX),
		.currentCommandInEX(currentCommandInEX),
		.currentCommandAddrInEX(currentCommandAddrInEX),
		.aluOperationInEX(aluOperationInEX),
		.aluInputSelectInEX(aluInputSelectInEX),
		.cuOverFlowInEX(cuOverFlowInEX),
		.immAfterExtendInEX(immAfterExtendInEX),
		.cuDmBranchInEX(cuDmBranchInEX),
		.cmpOperationInEX(cmpOperationInEX),
		.dmConditionMoveInEX(dmConditionMoveInEX),
		.memWriteEnabledInEX(memWriteEnabledInEX),
		.loadWriteMoodInEX(loadWriteMoodInEX),
		.pcControlInEX(pcControlInEX),
		.dataToRegSelectInEX(dataToRegSelectInEX),
		.regFinalDstInEX(regFinalDstInEX),
		.regWriteEnabledInEX(regWriteEnabledInEX),
		.dataWriteToRegFormIDInEX(dataWriteToRegFormIDInEX),
		.regData1InEX(regReadData1InEX),
		.regData2InEX(regReadData2InEX),
		.mulDivOperationInEX(mulDivOperationInEX),
		.exConditionMoveInEX(exConditionMoveInEX),
		.cuMdBranchInEX(cuMdBranchInEX)
	);

	DoubleForwardSelect mipsDataForwardSelectInEX(
		.srcDataA(regReadData1InEX),
		.srcDataB(regReadData2InEX),
		.dataCanUseEarlier(dataWriteToRegFormEXInMEM),
		.dataCanUseLater(dataWriteToRegInWB),
		.dataForwardSelect(forwardInEX),
		.dataASelected(regData1ForwardedInEX),
		.dataBSelected(regData2ForwardedInEX)
	);

	AluSelect mipsAluSelect(
		.regReadData1(regData1ForwardedInEX),
		.regReadData2(regData2ForwardedInEX),
		.immAfterExtend(immAfterExtendInEX),
		.aluInputSelect(aluInputSelectInEX),
		.aluInputA(aluInputAInEX),
		.aluInputB(aluInputBInEX)
	);

	ArithmeticLogicalUnit mipsArithmeticLogicalUnit(
		.aluInputA(aluInputAInEX),
		.aluInputB(aluInputBInEX),
		.aluOperation(aluOperationInEX),
		.aluOutput(aluOutputInEX),
		.aluOverFlow(aluOverFlowInEX)
	);

	MulDivSolver mipsMulDivSolver(
		.clk(clk),.reset(reset),
		.mulDivOperation(mulDivOperationInEX),
		.mulDivInputA(aluInputAInEX),
		.mulDivInputB(aluInputBInEX),
		.busySignal(mdBusyInEX),
		.startSignal(mdStartInEX),
		.registerHI(dataFromHIInEX),
		.registerLO(dataFromLOInEX)
	);

	CompareUnit mipsCompareUnitInEX(
		.cmpInputA(dataFromLOInEX),
		.cmpInputB(32'h00000000),
		.cmpOperation(cmpOperationInEX),
		.toBranch(cmpToBranchInEX)
	);

	EightDataToRegSelect mipsDataWriteToRegSelectInEX(
		.dataToSelectBy0(dataWriteToRegFormIDInEX),
		.dataToSelectBy1(aluOutputInEX),
		.dataToSelectBy2(dataFromHIInEX),
		.dataToSelectBy3(dataFromLOInEX),
		.dataToSelectBy4(32'h00000000),
		.dataToSelectBy5(32'h00000000),
		.dataToSelectBy6(32'h00000000),
		.dataToSelectBy7(32'h00000000),
		.dataToRegSelect(dataToRegSelectInEX[4:2]),
		.dataWriteToReg(dataWriteToRegInEX)
	);

	FlowReg_EX_MEM mipsFlowReg_EX_MEM(
		.clk(clk),
		.resetOf_EX_MEM(reset),
		.stallOf_EX_MEM(1'b0),
		.tNewInEX(tNewInEX),
		.currentCommandInEX(currentCommandInEX),
		.currentCommandAddrInEX(currentCommandAddrInEX),
		.aluOutputInEX(aluOutputInEX),
		.cuDmBranchInEX(cuDmBranchInEX),
		.cmpOperationInEX(cmpOperationInEX),
		.dmConditionMoveInEX(dmConditionMoveInEX),
		.memWriteEnabledInEX(memWriteEnabledInEX),
		.loadWriteMoodInEX(loadWriteMoodInEX),
		.pcControlInEX(pcControlInEX),
		.dataToRegSelectInEX(dataToRegSelectInEX[1:0]),
		.regWriteEnabledInEX(regWriteEnabledInEX&(cmpToBranchInEX|exConditionMoveInEX)),
		.regFinalDstInEX(regFinalDstInEX),
		.dataWriteToRegInEX(dataWriteToRegInEX),
		.regData1ForwardedInEX(regData1ForwardedInEX),
		.regData2ForwardedInEX(regData2ForwardedInEX),
		.tNewInMEM(tNewInMEM),
		.currentCommandInMEM(currentCommandInMEM),
		.currentCommandAddrInMEM(currentCommandAddrInMEM),
		.aluOutputInMEM(aluOutputInMEM),
		.cuDmBranchInMEM(cuDmBranchInMEM),
		.cmpOperationInMEM(cmpOperationInMEM),
		.dmConditionMoveInMEM(dmConditionMoveInMEM),
		.memWriteEnabledInMEM(memWriteEnabledInMEM),
		.loadWriteMoodInMEM(loadWriteMoodInMEM),
		.pcControlInMEM(pcControlInMEM),
		.dataToRegSelectInMEM(dataToRegSelectInMEM),
		.regWriteEnabledInMEM(regWriteEnabledInMEM),
		.regFinalDstInMEM(regFinalDstInMEM),
		.dataWriteToRegFormEXInMEM(dataWriteToRegFormEXInMEM),
		.regData1InMEM(regReadData1InMEM),
		.regData2InMEM(regReadData2InMEM)
	);

	SingleForwardSelect mipsDataForwardSelectInMEM(
		.srcDataA(regReadData1InMEM),
		.srcDataB(regReadData2InMEM),
		.dataCanUse(dataWriteToRegInWB),
		.dataForwardSelect(forwardInMEM),
		.dataASelected(regData1ForwardedInMEM),
		.dataBSelected(regData2ForwardedInMEM)
	);

	DataMemory mipsDataMemory(
		.clk(clk),.reset(reset),
		.loadWriteMood(loadWriteMoodInMEM),
		.addrOfDataInMem(aluOutputInMEM),
		.memWriteEnabled(memWriteEnabledInMEM),
		.dataWriteToMem(regData2ForwardedInMEM),
		.currentCommandAddr(currentCommandAddrInMEM),
		.dataGiveToReg(memDataToRegInMEM)
	);

	CompareUnit mipsCompareUnitInMEM(
		.cmpInputA(memDataToRegInMEM),
		.cmpInputB(32'h00000000),
		.cmpOperation(cmpOperationInMEM),
		.toBranch(cmpToBranchInMEM)
	);

	FourDataToRegSelect mipsDataWriteToRegSelectInMEM(
		.dataToSelectBy0(dataWriteToRegFormEXInMEM),
		.dataToSelectBy1(memDataToRegInMEM),
		.dataToSelectBy2(32'h00000000),
		.dataToSelectBy3(32'h00000000),
		.dataToRegSelect(dataToRegSelectInMEM[1:0]),
		.dataWriteToReg(dataWriteToRegInMEM)
	);

	FlowReg_MEM_WB mipsFlowReg_MEM_WB(
		.clk(clk),
		.resetOf_MEM_WB(reset),
		.stallOf_MEM_WB(1'b0),
		.currentCommandAddrInMEM(currentCommandAddrInMEM),
		.regWriteEnabledInMEM(regWriteEnabledInMEM&(cmpToBranchInMEM|dmConditionMoveInMEM)),
		.dataWriteToRegInMEM(dataWriteToRegInMEM),
		.regFinalDstInMEM(regFinalDstInMEM),
		.loadWriteMoodInMEM(loadWriteMoodInMEM),
		.addrOfDataInMEM(aluOutputInMEM[1:0]),
		.currentCommandAddrInWB(currentCommandAddrInWB),
		.regWriteEnabledInWB(regWriteEnabledInWB),
		.dataWriteToRegFormMEMInWB(dataWriteToRegFormMEMInWB),
		.regFinalDstInWB(regFinalDstInWB),
		.loadWriteMoodInWB(loadWriteMoodInWB),
		.addrOfDataInWB(addrOfDataInWB)
	);

	ExtenderForLoad ExtenderForLoadInWB(
		.addrOfDataInWB(addrOfDataInWB),
		.loadWriteMood(loadWriteMoodInWB),
		.dataToExtend(dataWriteToRegFormMEMInWB),
		.dataExtended(dataWriteToRegInWB)
	);

endmodule