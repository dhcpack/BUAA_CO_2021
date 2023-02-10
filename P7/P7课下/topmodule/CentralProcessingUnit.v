`timescale 1ns/1ps

module CentralProcessingUnit(
		input clk,input reset,
		input debugMood,
		input [5:0] interruptRequest,
		input [31:0] memDataToRegInMEM,
		input [31:0] currentCommandInIF,
		output [31:0] currentCommandAddrInIF,
		output [2:0] loadWriteMoodInMEM,
		output [31:0] memReadOrWriteAddr,
		output memWriteEnabledInMEM,
		output [31:0] dataWriteToMemInMEM,
		output [31:0] currentCommandAddrInMEM,
		output [31:0] commandAddrToCP0InEX
	);

	wire stallAndFlush,errorAddrTagInIF; wire [4:0] errorCodeInIF; wire [31:0] nextCommandAddrInIF;
	//------------------------------------------------
	wire errorAddrTagInID; wire [1:0] extendMoodInID,pcControlInID,aluInputSelectInID,regDstSelectInID;
	wire [3:0] aluOperationInID,cmpOperationInID,forwardInID,mulDivOperationInID; wire [5:0] dataToRegSelectInID;
	wire [31:0] currentCommandInID,currentCommandAddrInID,dataWriteToRegInID; wire isJumpCommandInID,isDelayBranchInID;
	wire cuOverFlowInID,mulOrDivInID,exConditionMoveInID,cuMdBranchInID,writeEnabledOfCP0InID,toFlushCP0InID,knowCommandInID;
	wire [2:0] loadWriteMoodInID,tNewInID,tUseOf2521InID,tUseOf2016InID; wire [4:0] regFinalDstInID,errorCodeInID,errorSrcCodeInID;
	wire [31:0] immAfterExtendInID,regReadData1InID,regReadData2InID,nextCommandAddrInID,regData1ForwardedInID,regData2ForwardedInID;
	wire regConditionMoveInID,memWriteEnabledInID,regWriteEnabledInID,cmpToBranchInID,dmConditionMoveInID,cuRegBranchInID,cuDmBranchInID;
	//------------------------------------------------
	wire [31:0] aluOutputInEX,regData1ForwardedInEX,regData2ForwardedInEX,dataWriteToRegFromIDInEX,dataWriteToRegInEX;
	wire [1:0] aluInputSelectInEX,pcControlInEX; wire [3:0] aluOperationInEX,cmpOperationInEX,forwardInEX,mulDivOperationInEX;
	wire [31:0] regReadData1InEX,regReadData2InEX,immAfterExtendInEX,aluInputAInEX,aluInputBInEX,currentCommandInEX,branchAddrInEX;
	wire [31:0] dataFromHIInEX,dataFromLOInEX,dataGetFromCP0InEX,commandAddrFromCP0InEX,currentCommandAddrInEX; wire toFlushCP0InEX;
	wire [2:0] tNewInEX,loadWriteMoodInEX; wire [4:0] regFinalDstInEX,errorCodeInEX,errorSrcCodeInEX; wire [3:0] dataToRegSelectInEX;
	wire aluOverFlowInEX,memWriteEnabledInEX,regWriteEnabledInEX,cuOverFlowInEX,isDelayBranchInEX,errorAddrTagInEX,finalDelayBranchInEX;
	wire cuDmBranchInEX,dmConditionMoveInEX,mdBusyInEX,mdStartInEX,cmpToBranchInEX,exConditionMoveInEX,cuMdBranchInEX,writeEnabledOfCP0InEX;
	//------------------------------------------------
	wire regWriteEnabledInMEM,cuDmBranchInMEM,dmConditionMoveInMEM,dataToRegSelectInMEM;
	wire [31:0] aluOutputInMEM,currentCommandInMEM,branchAddrInMEM,dataWriteToRegFromEXInMEM;
	wire [31:0] regReadData1InMEM,regReadData2InMEM,regData1ForwardedInMEM,regData2ForwardedInMEM,dataWriteToRegInMEM;
	wire [1:0] pcControlInMEM,forwardInMEM; wire [2:0] tNewInMEM; wire [3:0] cmpOperationInMEM; wire [4:0] regFinalDstInMEM;
	//------------------------------------------------
	wire memOrALUToRegInWB,regWriteEnabledInWB; wire [1:0] addrOfDataInWB; wire [2:0] loadWriteMoodInWB;
	wire [31:0] currentCommandAddrInWB,dataWriteToRegFromMEMInWB,dataWriteToRegInWB; wire [4:0] regFinalDstInWB;

	assign errorCodeInIF=errorAddrTagInIF?5'h4:5'h0; assign errorCodeInID=knowCommandInID?5'b0:5'ha;
	assign commandAddrToCP0InEX=((currentCommandAddrInEX!=0) || errorAddrTagInEX)?currentCommandAddrInEX:
		((currentCommandAddrInID!=0) || errorAddrTagInID)?currentCommandAddrInID:currentCommandAddrInIF;
	assign finalDelayBranchInEX=((currentCommandAddrInEX!=0) || errorAddrTagInEX)?isDelayBranchInEX:
		((currentCommandAddrInID!=0) || errorAddrTagInID)?isDelayBranchInID:isJumpCommandInID;
	assign memReadOrWriteAddr=aluOutputInMEM; assign dataWriteToMemInMEM=regData2ForwardedInMEM;
	assign errorAddrTagInIF=((currentCommandAddrInIF&3)!=0) || (currentCommandAddrInIF<32'h3000) || (currentCommandAddrInIF>32'h4ffc);

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
		.errorOccored(jumpTo4180InEX|toFlushCP0InID|toFlushCP0InEX),
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
		.jumpAddrFromReg1InID(regData1ForwardedInID),
		.jumpAddrFromReg2InID(regData2ForwardedInID),
		.jumpAddrFromReg1InEX(regData1ForwardedInEX),
		.jumpAddrFromReg2InEX(regData2ForwardedInEX),
		.jumpAddrFromReg1InMEM(regData1ForwardedInMEM),
		.jumpAddrFromReg2InMEM(regData2ForwardedInMEM),
		.jumpToAddrInCP0(toFlushCP0InEX),
		.jumpToAddrIn4180(jumpTo4180InEX),
		.commandAddrFromCP0(commandAddrFromCP0InEX),
		.currentCommandAddr(currentCommandAddrInIF),
		.nextCommandAddr(nextCommandAddrInIF)
	);

	FlowReg_IF_ID mipsFlowReg_IF_ID(
		.clk(clk),
		.resetOf_IF_ID(reset|(cuMdBranchInEX&cmpToBranchInEX)|(cuDmBranchInMEM&
			cmpToBranchInMEM)|jumpTo4180InEX|toFlushCP0InID|toFlushCP0InEX),
		.stallOf_IF_ID(stallAndFlush),
		.currentCommandInIF(currentCommandInIF),
		.currentCommandAddrInIF(currentCommandAddrInIF),
		.nextCommandAddrInIF(nextCommandAddrInIF),
		.errorCodeInIF(errorCodeInIF),
		.errorAddrTagInIF(errorAddrTagInIF),
		.isDelayBranchInIF(isJumpCommandInID),
		.currentCommandInID(currentCommandInID),
		.currentCommandAddrInID(currentCommandAddrInID),
		.nextCommandAddrInID(nextCommandAddrInID),
		.errorSrcCodeInID(errorSrcCodeInID),
		.isDelayBranchInID(isDelayBranchInID),
		.errorAddrTagInID(errorAddrTagInID)
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
		.writeEnabledOfCP0InID(writeEnabledOfCP0InID),
		.pcControlInID(pcControlInID),
		.dataToRegSelectInID(dataToRegSelectInID),
		.mulOrDivInID(mulOrDivInID),
		.mulDivOperationInID(mulDivOperationInID),
		.knowCommandInID(knowCommandInID),
		.toFlushCP0InID(toFlushCP0InID),
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
		.dataCanUseEarlier(dataWriteToRegFromIDInEX),
		.dataCanUseLater(dataWriteToRegFromEXInMEM),
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

	JumpJudgeUnit mipsJumpJudgeUnit(
		.currentCommand(currentCommandInID),
		.isJumpCommand(isJumpCommandInID)
	);

	FourDataToRegSelect mipsDataWriteToRegSelectInID(
		.dataToSelectBy0(nextCommandAddrInID+4),
		.dataToSelectBy1(regReadData1InID),
		.dataToSelectBy2(immAfterExtendInID),
		.dataToSelectBy3(32'h00000000),
		.dataToRegSelect(dataToRegSelectInID[5:4]),
		.dataWriteToReg(dataWriteToRegInID)
	);

	reg previousStalled; initial previousStalled<=0;
	always @(posedge clk) begin
		if (reset) previousStalled<=0;
		else previousStalled<=stallAndFlush;
	end

	FlowReg_ID_EX mipsFlowReg_ID_EX(
		.clk(clk),
		.resetOf_ID_EX(reset|stallAndFlush|(cuDmBranchInMEM&cmpToBranchInMEM&(~previousStalled))|jumpTo4180InEX|toFlushCP0InEX),
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
		.dataToRegSelectInID(dataToRegSelectInID[3:0]),
		.regFinalDstInID(regFinalDstInID),
		.regWriteEnabledInID(regWriteEnabledInID&(cmpToBranchInID|regConditionMoveInID)),
		.dataWriteToRegInID(dataWriteToRegInID),
		.regData1ForwardedInID(regData1ForwardedInID),
		.regData2ForwardedInID(regData2ForwardedInID),
		.mulDivOperationInID(mulDivOperationInID),
		.exConditionMoveInID(exConditionMoveInID),
		.cuMdBranchInID(cuMdBranchInID),
		.writeEnabledOfCP0InID(writeEnabledOfCP0InID),
		.errorCodeInID((|errorSrcCodeInID)?errorSrcCodeInID:errorCodeInID),
		.isDelayBranchInID(isDelayBranchInID),
		.toFlushCP0InID(toFlushCP0InID),
		.errorAddrTagInID(errorAddrTagInID),
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
		.dataWriteToRegFromIDInEX(dataWriteToRegFromIDInEX),
		.regData1InEX(regReadData1InEX),
		.regData2InEX(regReadData2InEX),
		.mulDivOperationInEX(mulDivOperationInEX),
		.exConditionMoveInEX(exConditionMoveInEX),
		.cuMdBranchInEX(cuMdBranchInEX),
		.writeEnabledOfCP0InEX(writeEnabledOfCP0InEX),
		.errorSrcCodeInEX(errorSrcCodeInEX),
		.isDelayBranchInEX(isDelayBranchInEX),
		.toFlushCP0InEX(toFlushCP0InEX),
		.errorAddrTagInEX(errorAddrTagInEX)
	);

	DoubleForwardSelect mipsDataForwardSelectInEX(
		.srcDataA(regReadData1InEX),
		.srcDataB(regReadData2InEX),
		.dataCanUseEarlier(dataWriteToRegFromEXInMEM),
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
		.mulDivOperation(jumpTo4180InEX?4'b0:mulDivOperationInEX),
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

	EXErrorJudgeUnit mipsEXErrorJudgeUnit(
		.operationCodeInEX(currentCommandInEX[31:26]),
		.aluOverFlowInEX(aluOverFlowInEX),
		.cuOverFlowInEX(cuOverFlowInEX),
		.ansFromAluInEX(aluOutputInEX),
		.errorCodeInEX(errorCodeInEX)
	);

	Coprocessor0 mipsCoprocessor0(
		.clk(clk),.reset(reset),
		.flush(toFlushCP0InEX),
		.debugMood(debugMood),
		.readOrWriteAddrInCP0(currentCommandInEX[15:11]),
		.writeEnabledOfCP0(writeEnabledOfCP0InEX),
		.commandAddrToCP0(commandAddrToCP0InEX),
		.interruptRequest(interruptRequest),
		.errorCode((|errorSrcCodeInEX)?errorSrcCodeInEX:errorCodeInEX),
		.dataWriteToCP0(regData2ForwardedInEX),
		.isInBranchDelay(finalDelayBranchInEX),
		.commandAddrFromCP0(commandAddrFromCP0InEX),
		.dataGetFromCP0(dataGetFromCP0InEX),
		.jumpTo4180(jumpTo4180InEX)
	);

	EightDataToRegSelect mipsDataWriteToRegSelectInEX(
		.dataToSelectBy0(dataWriteToRegFromIDInEX),
		.dataToSelectBy1(aluOutputInEX),
		.dataToSelectBy2(dataFromHIInEX),
		.dataToSelectBy3(dataFromLOInEX),
		.dataToSelectBy4(dataGetFromCP0InEX),
		.dataToSelectBy5(32'h00000000),
		.dataToSelectBy6(32'h00000000),
		.dataToSelectBy7(32'h00000000),
		.dataToRegSelect(dataToRegSelectInEX[3:1]),
		.dataWriteToReg(dataWriteToRegInEX)
	);

	FlowReg_EX_MEM mipsFlowReg_EX_MEM(
		.clk(clk),
		.resetOf_EX_MEM(reset|jumpTo4180InEX),
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
		.dataToRegSelectInEX(dataToRegSelectInEX[0]),
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
		.dataWriteToRegFromEXInMEM(dataWriteToRegFromEXInMEM),
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

	CompareUnit mipsCompareUnitInMEM(
		.cmpInputA(memDataToRegInMEM),
		.cmpInputB(32'h00000000),
		.cmpOperation(cmpOperationInMEM),
		.toBranch(cmpToBranchInMEM)
	);

	TwoDataToRegSelect mipsDataWriteToRegSelectInMEM(
		.dataToSelectBy0(dataWriteToRegFromEXInMEM),
		.dataToSelectBy1(memDataToRegInMEM),
		.dataToRegSelect(dataToRegSelectInMEM),
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
		.dataWriteToRegFromMEMInWB(dataWriteToRegFromMEMInWB),
		.regFinalDstInWB(regFinalDstInWB),
		.loadWriteMoodInWB(loadWriteMoodInWB),
		.addrOfDataInWB(addrOfDataInWB)
	);

	ExtenderForLoad ExtenderForLoadInWB(
		.addrOfDataInWB(addrOfDataInWB),
		.loadWriteMood(loadWriteMoodInWB),
		.dataToExtend(dataWriteToRegFromMEMInWB),
		.dataExtended(dataWriteToRegInWB)
	);

endmodule