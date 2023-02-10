`timescale 1ns/1ps

module FlowReg_IF_ID(
		input clk,input resetOf_IF_ID,input stallOf_IF_ID,
		input [31:0] currentCommandInIF,
		input [31:0] currentCommandAddrInIF,
		input [31:0] nextCommandAddrInIF,
		//------------------------------------------------
		output reg [31:0] currentCommandInID,
		output reg [31:0] currentCommandAddrInID,
		output reg [31:0] nextCommandAddrInID
	);

	initial begin
		currentCommandInID<=0;
		currentCommandAddrInID<=0;
		nextCommandAddrInID<=0;
	end

	always @(posedge clk) begin
		if (resetOf_IF_ID) begin
			currentCommandInID<=0;
			currentCommandAddrInID<=0;
			nextCommandAddrInID<=0;
		end
		else if (!stallOf_IF_ID) begin
			currentCommandInID<=currentCommandInIF;
			currentCommandAddrInID<=currentCommandAddrInIF;
			nextCommandAddrInID<=nextCommandAddrInIF;
		end
		else begin end
	end

endmodule

module FlowReg_ID_EX(
		input clk,input resetOf_ID_EX,input stallOf_ID_EX,
		input [2:0] tNewInID,							input [31:0] currentCommandInID,
		input [31:0] currentCommandAddrInID,			input [3:0] aluOperationInID,
		input [1:0] aluInputSelectInID,					input cuOverFlowInID,
		input [31:0] immAfterExtendInID,				input cuDmBranchInID,
		input [3:0] cmpOperationInID,					input dmConditionMoveInID,
		input memWriteEnabledInID,						input [3:0] loadWriteMoodInID,
		input [1:0] pcControlInID,						input [3:0] dataToRegSelectInID,
		input [4:0] regFinalDstInID,					input regWriteEnabledInID,
		input [31:0] dataWriteToRegInID,				input [31:0] regData1ForwardedInID,
		input [31:0] regData2ForwardedInID,
		//------------------------------------------------
		output reg [2:0] tNewInEX,						output reg [31:0] currentCommandInEX,
		output reg [31:0] currentCommandAddrInEX,		output reg [3:0] aluOperationInEX,
		output reg [1:0] aluInputSelectInEX,			output reg cuOverFlowInEX,
		output reg [31:0] immAfterExtendInEX,			output reg cuDmBranchInEX,
		output reg [3:0] cmpOperationInEX,				output reg dmConditionMoveInEX,
		output reg memWriteEnabledInEX,					output reg [3:0] loadWriteMoodInEX,
		output reg [1:0] pcControlInEX,					output reg [3:0] dataToRegSelectInEX,
		output reg [4:0] regFinalDstInEX,				output reg regWriteEnabledInEX,
		output reg [31:0] dataWriteToRegFormIDInEX,		output reg [31:0] regData1InEX,
		output reg [31:0] regData2InEX
	);

	initial begin
		tNewInEX<=0;						currentCommandInEX<=0;
		currentCommandAddrInEX<=0;			aluOperationInEX<=0;
		aluInputSelectInEX<=0;				cuOverFlowInEX<=0;
		immAfterExtendInEX<=0;				cuDmBranchInEX<=0;
		cmpOperationInEX<=0;				dmConditionMoveInEX<=0;
		memWriteEnabledInEX<=0;				loadWriteMoodInEX<=0;
		pcControlInEX<=0;					dataToRegSelectInEX<=0;
		regFinalDstInEX<=0;					regWriteEnabledInEX<=0;
		dataWriteToRegFormIDInEX<=0;		regData1InEX<=0;
		regData2InEX<=0;
	end

	always @(posedge clk) begin
		if (resetOf_ID_EX) begin
			tNewInEX<=0;						currentCommandInEX<=0;
			currentCommandAddrInEX<=0;			aluOperationInEX<=0;
			aluInputSelectInEX<=0;				cuOverFlowInEX<=0;
			immAfterExtendInEX<=0;				cuDmBranchInEX<=0;
			cmpOperationInEX<=0;				dmConditionMoveInEX<=0;
			memWriteEnabledInEX<=0;				loadWriteMoodInEX<=0;
			pcControlInEX<=0;					dataToRegSelectInEX<=0;
			regFinalDstInEX<=0;					regWriteEnabledInEX<=0;
			dataWriteToRegFormIDInEX<=0;		regData1InEX<=0;
			regData2InEX<=0;
		end
		else if (!stallOf_ID_EX) begin
			tNewInEX<=(tNewInID==3'h0)?3'h0:tNewInID-3'h1;		currentCommandInEX<=currentCommandInID;
			currentCommandAddrInEX<=currentCommandAddrInID;		aluOperationInEX<=aluOperationInID;
			aluInputSelectInEX<=aluInputSelectInID;				cuOverFlowInEX<=cuOverFlowInID;
			immAfterExtendInEX<=immAfterExtendInID;				cuDmBranchInEX<=cuDmBranchInID;
			cmpOperationInEX<=cmpOperationInID;					dmConditionMoveInEX<=dmConditionMoveInID;
			memWriteEnabledInEX<=memWriteEnabledInID;			loadWriteMoodInEX<=loadWriteMoodInID;
			pcControlInEX<=pcControlInID;						dataToRegSelectInEX<=dataToRegSelectInID;
			regFinalDstInEX<=regFinalDstInID;					regWriteEnabledInEX<=regWriteEnabledInID;
			dataWriteToRegFormIDInEX<=dataWriteToRegInID;		regData1InEX<=regData1ForwardedInID;
			regData2InEX<=regData2ForwardedInID;
		end
		else begin end
	end

endmodule

module FlowReg_EX_MEM(
		input clk,input resetOf_EX_MEM,input stallOf_EX_MEM,
		input [2:0] tNewInEX,							input [31:0] currentCommandInEX,
		input [31:0] currentCommandAddrInEX,			input [31:0] aluOutputInEX,
		input cuDmBranchInEX,							input [3:0] cmpOperationInEX,
		input dmConditionMoveInEX,						input memWriteEnabledInEX,
		input [3:0] loadWriteMoodInEX,					input [1:0] pcControlInEX,
		input [1:0] dataToRegSelectInEX,				input regWriteEnabledInEX,
		input [4:0] regFinalDstInEX,					input [31:0] dataWriteToRegInEX,
		input [31:0] regData1ForwardedInEX,				input [31:0] regData2ForwardedInEX,
		//------------------------------------------------
		output reg [2:0] tNewInMEM,						output reg [31:0] currentCommandInMEM,
		output reg [31:0] currentCommandAddrInMEM,		output reg [31:0] aluOutputInMEM,
		output reg cuDmBranchInMEM,						output reg [3:0] cmpOperationInMEM,
		output reg dmConditionMoveInMEM,					output reg memWriteEnabledInMEM,
		output reg [3:0] loadWriteMoodInMEM,			output reg [1:0] pcControlInMEM,
		output reg [1:0] dataToRegSelectInMEM,			output reg regWriteEnabledInMEM,
		output reg [4:0] regFinalDstInMEM,				output reg [31:0] dataWriteToRegFormEXInMEM,
		output reg [31:0] regData1InMEM,				output reg [31:0] regData2InMEM
	);

	initial begin
		tNewInMEM<=0;					currentCommandInMEM<=0;
		currentCommandAddrInMEM<=0;		aluOutputInMEM<=0;
		cuDmBranchInMEM<=0;				cmpOperationInMEM<=0;
		dmConditionMoveInMEM<=0;			memWriteEnabledInMEM<=0;
		loadWriteMoodInMEM<=0;			pcControlInMEM<=0;
		dataToRegSelectInMEM<=0;		regWriteEnabledInMEM<=0;
		regFinalDstInMEM<=0;			dataWriteToRegFormEXInMEM<=0;
		regData1InMEM<=0;				regData2InMEM<=0;
	end

	always @(posedge clk) begin
		if (resetOf_EX_MEM) begin
			tNewInMEM<=0;					currentCommandInMEM<=0;
			currentCommandAddrInMEM<=0;		aluOutputInMEM<=0;
			cuDmBranchInMEM<=0;				cmpOperationInMEM<=0;
			dmConditionMoveInMEM<=0;			memWriteEnabledInMEM<=0;
			loadWriteMoodInMEM<=0;			pcControlInMEM<=0;
			dataToRegSelectInMEM<=0;		regWriteEnabledInMEM<=0;
			regFinalDstInMEM<=0;			dataWriteToRegFormEXInMEM<=0;
			regData1InMEM<=0;				regData2InMEM<=0;
		end
		else if (!stallOf_EX_MEM) begin
			tNewInMEM<=(tNewInEX==3'h0)?3'h0:tNewInEX-3'h1;			currentCommandInMEM<=currentCommandInEX;
			currentCommandAddrInMEM<=currentCommandAddrInEX;		aluOutputInMEM<=aluOutputInEX;
			cuDmBranchInMEM<=cuDmBranchInEX;						cmpOperationInMEM<=cmpOperationInEX;
			dmConditionMoveInMEM<=dmConditionMoveInEX;					memWriteEnabledInMEM<=memWriteEnabledInEX;
			loadWriteMoodInMEM<=loadWriteMoodInEX;					pcControlInMEM<=pcControlInEX;
			dataToRegSelectInMEM<=dataToRegSelectInEX;				regWriteEnabledInMEM<=regWriteEnabledInEX;
			regFinalDstInMEM<=regFinalDstInEX;						dataWriteToRegFormEXInMEM<=dataWriteToRegInEX;
			regData1InMEM<=regData1ForwardedInEX;					regData2InMEM<=regData2ForwardedInEX;
		end
		else begin end
	end

endmodule

module FlowReg_MEM_WB(
		input clk,input resetOf_MEM_WB,input stallOf_MEM_WB,
		input [31:0] currentCommandAddrInMEM,			input regWriteEnabledInMEM,
		input [31:0] dataWriteToRegInMEM,				input [4:0] regFinalDstInMEM,
		//------------------------------------------------
		output reg [31:0] currentCommandAddrInWB,		output reg regWriteEnabledInWB,
		output reg [31:0] dataWriteToRegFormMEMInWB,	output reg [4:0] regFinalDstInWB
	);

	initial begin
		currentCommandAddrInWB<=0;			regWriteEnabledInWB<=0;
		dataWriteToRegFormMEMInWB<=0;		regFinalDstInWB<=0;
	end

	always @(posedge clk) begin
		if (resetOf_MEM_WB) begin
			currentCommandAddrInWB<=0;			regWriteEnabledInWB<=0;
			dataWriteToRegFormMEMInWB<=0;		regFinalDstInWB<=0;
		end
		else if (!stallOf_MEM_WB) begin
			currentCommandAddrInWB<=currentCommandAddrInMEM;		regWriteEnabledInWB<=regWriteEnabledInMEM;
			dataWriteToRegFormMEMInWB<=dataWriteToRegInMEM;			regFinalDstInWB<=regFinalDstInMEM;
		end
		else begin end
	end

endmodule