`timescale 1ns/1ps

module InstructionMemory(
		input [31:0] currentCommandAddr,
		output [31:0] currentCommand
	);

	reg [31:0] instructionMemory[0:4095];

	assign currentCommand=instructionMemory[(currentCommandAddr-32'h3000)>>2];

	initial $readmemh("code.txt",instructionMemory);

endmodule