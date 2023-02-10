`timescale 1ns/1ps

module JumpJudgeUnit(
		input [31:0] currentCommand,
		output isJumpCommand
	);

	assign isJumpCommand=(currentCommand[31:26]==6'b000100)|(currentCommand[31:26]==6'b000101)|(currentCommand[31:26]==6'b000111)|
		(currentCommand[31:26]==6'b000110)|(currentCommand[31:26]==6'b000010)|(currentCommand[31:26]==6'b000011)|
		((currentCommand[31:26]==6'b0) && (currentCommand[5:0]==6'b001000))|((currentCommand[31:26]==6'b0) && (currentCommand[5:0]==6'b001001))|
		((currentCommand[31:26]==6'b1) && (currentCommand[20:16]==5'b00000))|((currentCommand[31:26]==6'b1) && (currentCommand[20:16]==5'b00001));

endmodule