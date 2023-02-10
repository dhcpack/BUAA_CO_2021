`timescale 1ns/1ps

module AluSelect(
		input [31:0] regReadData1,
		input [31:0] regReadData2,
		input [31:0] immAfterExtend,
		input [1:0] aluInputSelect,
		output [31:0] aluInputA,
		output [31:0] aluInputB
	);

	assign aluInputA=aluInputSelect[1]?immAfterExtend:regReadData1;
	assign aluInputB=aluInputSelect[0]?immAfterExtend:regReadData2;

endmodule

module BitExtender(
		input [1:0] extendMood,
		input [15:0] immToExtend,
		output [31:0] immAfterExtend
	);

	assign immAfterExtend=(extendMood==0)?{{16{immToExtend[15]}},immToExtend}:(extendMood==1)?
		{{16{1'b0}},immToExtend}:(extendMood==2)?{{27{1'b0}},immToExtend[10:6]}:{immToExtend,{16{1'b0}}};

endmodule

module RegDstSelect(
		input [4:0] currentCommand2016,
		input [4:0] currentCommand1511,
		input [1:0] regDstSelect,
		output [4:0] regFinalDst
	);

	assign regFinalDst=(regDstSelect==0)?currentCommand2016:(regDstSelect==1)?currentCommand1511:5'h1f;

endmodule

module DataWriteToRegSelect(
		input [31:0] dataToSelectBy0,
		input [31:0] dataToSelectBy1,
		input [31:0] dataToSelectBy2,
		input [31:0] dataToSelectBy3,
		input [1:0] dataToRegSelect,
		output [31:0] dataWriteToReg
	);

	assign dataWriteToReg=(dataToRegSelect==0)?dataToSelectBy0:(dataToRegSelect==1)?
		dataToSelectBy1:(dataToRegSelect==2)?dataToSelectBy2:dataToSelectBy3;

endmodule

module SingleForwardSelect(
		input [31:0] srcDataA,
		input [31:0] srcDataB,
		input [31:0] dataCanUse,
		input [1:0] dataForwardSelect,
		output [31:0] dataASelected,
		output [31:0] dataBSelected
	);

	assign dataASelected=dataForwardSelect[1]?dataCanUse:srcDataA;
	assign dataBSelected=dataForwardSelect[0]?dataCanUse:srcDataB;

endmodule

module DoubleForwardSelect(
		input [31:0] srcDataA,
		input [31:0] srcDataB,
		input [31:0] dataCanUseEarlier,
		input [31:0] dataCanUseLater,
		input [3:0] dataForwardSelect,
		output [31:0] dataASelected,
		output [31:0] dataBSelected
	);

	assign dataASelected=dataForwardSelect[2]?dataCanUseEarlier:dataForwardSelect[3]?dataCanUseLater:srcDataA;
	assign dataBSelected=dataForwardSelect[0]?dataCanUseEarlier:dataForwardSelect[1]?dataCanUseLater:srcDataB;

endmodule