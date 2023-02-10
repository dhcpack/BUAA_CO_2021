`timescale 1ns/1ps

module InstructionMemory(
		input [31:0] currentCommandAddr,
		output [31:0] currentCommand
	);

	reg [31:0] instructionMemory[0:4095];

	assign currentCommand=((currentCommandAddr<32'h3000) || (currentCommandAddr>32'h4ffc))?
		32'hffffffff:instructionMemory[(currentCommandAddr-32'h3000)>>2];

	initial begin
		$readmemh("code.txt",instructionMemory);
		$readmemh("code_handler.txt",instructionMemory,1120,2047);
	end

endmodule