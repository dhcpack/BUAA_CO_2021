`timescale 1ns/1ps

`define aluOfAnd	4'b0000
`define aluOfOr		4'b0001
`define aluOfNor	4'b0010
`define aluOfXor	4'b0011
`define aluOfSlt	4'b0100
`define aluOfSltu	4'b0101
`define aluOfAdd	4'b0110
`define aluOfSub	4'b0111
`define aluOfSll	4'b1000
`define aluOfSrl	4'b1001
`define aluOfSra	4'b1010

module ArithmeticLogicalUnit(
		input [31:0] aluInputA,
		input [31:0] aluInputB,
		input [3:0] aluOperation,
		output [31:0] aluOutput,
		output aluOverFlow
	);

	assign aluOverFlow=(aluInputA[31]==aluInputB[31]) && (aluInputA[31]!=aluOutput[31]);
	assign aluOutput=(aluOperation==`aluOfAnd)?(aluInputA&aluInputB):
		(aluOperation==`aluOfOr)?(aluInputA|aluInputB):
		(aluOperation==`aluOfNor)?(~(aluInputA|aluInputB)):
		(aluOperation==`aluOfXor)?(aluInputA^aluInputB):
		(aluOperation==`aluOfSlt)?($signed(aluInputA)<$signed(aluInputB)):
		(aluOperation==`aluOfSltu)?(aluInputA<aluInputB):
		(aluOperation==`aluOfAdd)?(aluInputA+aluInputB):
		(aluOperation==`aluOfSub)?(aluInputA-aluInputB):
		(aluOperation==`aluOfSll)?(aluInputB<<aluInputA[4:0]):
		(aluOperation==`aluOfSrl)?(aluInputB>>aluInputA[4:0]):
		(aluOperation==`aluOfSra)?$signed($signed(aluInputB)>>>$signed(aluInputA[4:0])):0;

endmodule