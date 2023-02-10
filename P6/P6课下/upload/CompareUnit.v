`timescale 1ns/1ps

`define cmpOfBeq	4'b0000
`define cmpOfBne	4'b0001
`define cmpOfRsBgez	4'b0010
`define cmpOfRsBgtz	4'b0011
`define cmpOfRsBlez	4'b0100
`define cmpOfRsBltz	4'b0101
`define cmpOfRsBeqz	4'b0110
`define cmpOfRsBnez	4'b0111
`define cmpOfRtBgez	4'b1000
`define cmpOfRtBgtz	4'b1001
`define cmpOfRtBlez	4'b1010
`define cmpOfRtBltz	4'b1011
`define cmpOfRtBeqz	4'b1100
`define cmpOfRtBnez	4'b1101

module CompareUnit(
		input [31:0] cmpInputA,
		input [31:0] cmpInputB,
		input [3:0] cmpOperation,
		output toBranch
	);

	assign toBranch=(cmpOperation==`cmpOfBeq)?(cmpInputA==cmpInputB):
		(cmpOperation==`cmpOfBne)?(cmpInputA!=cmpInputB):
		(cmpOperation==`cmpOfRsBgez)?($signed(cmpInputA)>=0):
		(cmpOperation==`cmpOfRsBgtz)?($signed(cmpInputA)>0):
		(cmpOperation==`cmpOfRsBlez)?($signed(cmpInputA)<=0):
		(cmpOperation==`cmpOfRsBltz)?($signed(cmpInputA)<0):
		(cmpOperation==`cmpOfRsBeqz)?($signed(cmpInputA)==0):
		(cmpOperation==`cmpOfRsBnez)?($signed(cmpInputA)!=0):
		(cmpOperation==`cmpOfRtBgez)?($signed(cmpInputB)>=0):
		(cmpOperation==`cmpOfRtBgtz)?($signed(cmpInputB)>0):
		(cmpOperation==`cmpOfRtBlez)?($signed(cmpInputB)<=0):
		(cmpOperation==`cmpOfRtBltz)?($signed(cmpInputB)<0):
		(cmpOperation==`cmpOfRtBeqz)?($signed(cmpInputB)==0):
		(cmpOperation==`cmpOfRtBnez)?($signed(cmpInputB)!=0):1'b0;

endmodule