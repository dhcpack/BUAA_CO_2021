`timescale 1ns/1ps

module RiskSolveUnit(
		input [2:0] tNewInEX,
		input [2:0] tNewInMEM,
		input [2:0] tUseOf2521InID,
		input [2:0] tUseOf2016InID,
		input [4:0] currentCommand2521InID,
		input [4:0] currentCommand2016InID,
		input [4:0] currentCommand2521InEX,
		input [4:0] currentCommand2016InEX,
		input [4:0] currentCommand2521InMEM,
		input [4:0] currentCommand2016InMEM,
		input regWriteEnabledInEX,
		input regConditionMoveInEX,
		input regWriteEnabledInMEM,
		input regConditionMoveInMEM,
		input regWriteEnabledInWB,
		input [4:0] regFinalDstInEX,
		input [4:0] regFinalDstInMEM,
		input [4:0] regFinalDstInWB,
		output [3:0] forwardInID,
		output [3:0] forwardInEX,
		output [1:0] forwardInMEM,
		output stallAndFlush
	);

	wire stallDueTo2521AndEX,stallDueTo2521AndMEM,stallDueTo2016AndEX,stallDueTo2016AndMEM;

	assign forwardInID[3:2]={currentCommand2521InID!=0 && (currentCommand2521InID==regFinalDstInMEM) && regWriteEnabledInMEM && regConditionMoveInMEM
		,currentCommand2521InID!=0 && (currentCommand2521InID==regFinalDstInEX) && regWriteEnabledInEX && regConditionMoveInEX};
	assign forwardInID[1:0]={currentCommand2016InID!=0 && (currentCommand2016InID==regFinalDstInMEM) && regWriteEnabledInMEM && regConditionMoveInMEM
		,currentCommand2016InID!=0 && (currentCommand2016InID==regFinalDstInEX) && regWriteEnabledInEX && regConditionMoveInEX};
	//------------------------------------------------
	assign forwardInEX[3:2]={currentCommand2521InEX!=0 && (currentCommand2521InEX==regFinalDstInWB) && regWriteEnabledInWB
		,currentCommand2521InEX!=0 && (currentCommand2521InEX==regFinalDstInMEM) && regWriteEnabledInMEM && regConditionMoveInMEM};
	assign forwardInEX[1:0]={currentCommand2016InEX!=0 && (currentCommand2016InEX==regFinalDstInWB) && regWriteEnabledInWB
		,currentCommand2016InEX!=0 && (currentCommand2016InEX==regFinalDstInMEM) && regWriteEnabledInMEM && regConditionMoveInMEM};
	//------------------------------------------------
	assign forwardInMEM[1]=currentCommand2521InMEM!=0 && (currentCommand2521InMEM==regFinalDstInWB) && regWriteEnabledInWB;
	assign forwardInMEM[0]=currentCommand2016InMEM!=0 && (currentCommand2016InMEM==regFinalDstInWB) && regWriteEnabledInWB;
	//------------------------------------------------
	assign stallDueTo2521AndEX=(tUseOf2521InID<tNewInEX) && regWriteEnabledInEX
		&& currentCommand2521InID!=0 && (currentCommand2521InID==regFinalDstInEX);
	assign stallDueTo2521AndMEM=(tUseOf2521InID<tNewInMEM) && regWriteEnabledInMEM
		&& currentCommand2521InID!=0 && (currentCommand2521InID==regFinalDstInMEM);
	assign stallDueTo2016AndEX=(tUseOf2016InID<tNewInEX) && regWriteEnabledInEX
		&& currentCommand2016InID!=0 && (currentCommand2016InID==regFinalDstInEX);
	assign stallDueTo2016AndMEM=(tUseOf2016InID<tNewInMEM) && regWriteEnabledInMEM
		&& currentCommand2016InID!=0 && (currentCommand2016InID==regFinalDstInMEM);
	assign stallAndFlush=stallDueTo2521AndEX || stallDueTo2521AndMEM || stallDueTo2016AndEX || stallDueTo2016AndMEM;

endmodule