`timescale 1ns/1ps

module Coprocessor0(
		input clk,input reset,input flush,
		input debugMood,
		input [4:0] readOrWriteAddrInCP0,
		input writeEnabledOfCP0,
		input [31:0] commandAddrToCP0,
		input [5:0] interruptRequest,
		input [4:0] errorCode,
		input [31:0] dataWriteToCP0,
		input isInBranchDelay,
		output [31:0] commandAddrFromCP0,
		output [31:0] dataGetFromCP0,
		output jumpTo4180
	);

	wire jumpDueToError,jumpDueToInterrupt;
	reg [31:0] statusRegister,causeRegister,errorProgramCounter,processorId;

	assign dataGetFromCP0=writeEnabledOfCP0?dataWriteToCP0:
		(readOrWriteAddrInCP0==12)?statusRegister:(readOrWriteAddrInCP0==13)?causeRegister:
		(readOrWriteAddrInCP0==14)?errorProgramCounter:(readOrWriteAddrInCP0==15)?processorId:32'b0;
	assign commandAddrFromCP0=(writeEnabledOfCP0 && (readOrWriteAddrInCP0==14))?dataWriteToCP0:errorProgramCounter;
	assign jumpDueToError=(errorCode==4)|(errorCode==5)|(errorCode==10)|(errorCode==12);
	assign jumpDueToInterrupt=|(interruptRequest&statusRegister[15:10])&~statusRegister[1]&statusRegister[0];
	assign jumpTo4180=jumpDueToError|jumpDueToInterrupt;

	initial begin
		if (debugMood) statusRegister<=32'b0;
		else statusRegister<=32'hfc01; causeRegister<=0;
		errorProgramCounter<=0; processorId<=32'h125E591;
	end

	always @(posedge clk) begin
		if (reset) begin
			if (debugMood) statusRegister<=32'b0;
			else statusRegister<=32'hfc01; causeRegister<=0;
			errorProgramCounter<=0; processorId<=32'h125E591;
		end
		else begin
			if (!debugMood) causeRegister[15:10]<=interruptRequest;
			if (flush) begin statusRegister[1]<=1'b0; end else begin end
			if (jumpTo4180) begin
				if (debugMood) begin causeRegister[6:2]<=jumpDueToInterrupt?5'b0:errorCode; causeRegister[31]<=isInBranchDelay; end
				else causeRegister<={isInBranchDelay,15'b0,interruptRequest,3'b0,jumpDueToInterrupt?5'b0:errorCode,2'b0};
				if (isInBranchDelay) errorProgramCounter<=((commandAddrToCP0>>2)<<2)-32'h4;
				else errorProgramCounter<=((commandAddrToCP0>>2)<<2); statusRegister[1]<=1'b1;
			end
			else if (writeEnabledOfCP0) begin
				if (readOrWriteAddrInCP0==12) statusRegister<=dataWriteToCP0;
				else if (readOrWriteAddrInCP0==13) causeRegister<=dataWriteToCP0;
				else if (readOrWriteAddrInCP0==14) errorProgramCounter<=dataWriteToCP0;
				else if (readOrWriteAddrInCP0==15) processorId<=dataWriteToCP0;
				else begin end
			end
			else begin end
		end
	end

endmodule