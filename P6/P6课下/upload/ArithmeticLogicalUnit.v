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
`define aluOfClo	4'b1011
`define aluOfClz	4'b1100

module ArithmeticLogicalUnit(
		input [31:0] aluInputA,
		input [31:0] aluInputB,
		input [3:0] aluOperation,
		output [31:0] aluOutput,
		output aluOverFlow
	);

	wire [31:0] toSolve,rollOver,countOfTotalZero,countOfTotalOne;
	wire [31:0] countOfUpperZero,countOfUpperOne,countOfLowerZero,countOfLowerOne;

	assign toSolve=aluInputA;
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
		(aluOperation==`aluOfSra)?$signed($signed(aluInputB)>>>$signed(aluInputA[4:0])):
		(aluOperation==`aluOfClo)?countOfUpperOne:
		(aluOperation==`aluOfClz)?countOfUpperZero:0;
	//------------------------------------------------
	assign rollOver[0]=toSolve[31]; assign rollOver[1]=toSolve[30]; assign rollOver[2]=toSolve[29];
	assign rollOver[3]=toSolve[28]; assign rollOver[4]=toSolve[27]; assign rollOver[5]=toSolve[26];
	assign rollOver[6]=toSolve[25]; assign rollOver[7]=toSolve[24]; assign rollOver[8]=toSolve[23];
	assign rollOver[9]=toSolve[22]; assign rollOver[10]=toSolve[21]; assign rollOver[11]=toSolve[20];
	assign rollOver[12]=toSolve[19]; assign rollOver[13]=toSolve[18]; assign rollOver[14]=toSolve[17];
	assign rollOver[15]=toSolve[16]; assign rollOver[16]=toSolve[15]; assign rollOver[17]=toSolve[14];
	assign rollOver[18]=toSolve[13]; assign rollOver[19]=toSolve[12]; assign rollOver[20]=toSolve[11];
	assign rollOver[21]=toSolve[10]; assign rollOver[22]=toSolve[9]; assign rollOver[23]=toSolve[8];
	assign rollOver[24]=toSolve[7]; assign rollOver[25]=toSolve[6]; assign rollOver[26]=toSolve[5];
	assign rollOver[27]=toSolve[4]; assign rollOver[28]=toSolve[3]; assign rollOver[29]=toSolve[2];
	assign rollOver[30]=toSolve[1]; assign rollOver[31]=toSolve[0];
	//------------------------------------------------
	assign countOfTotalZero=(toSolve[0]==1'b0)+(toSolve[1]==1'b0)+(toSolve[2]==1'b0)+(toSolve[3]==1'b0)+(toSolve[4]==1'b0)+
		(toSolve[5]==1'b0)+(toSolve[6]==1'b0)+(toSolve[7]==1'b0)+(toSolve[8]==1'b0)+(toSolve[9]==1'b0)+
		(toSolve[10]==1'b0)+(toSolve[11]==1'b0)+(toSolve[12]==1'b0)+(toSolve[13]==1'b0)+(toSolve[14]==1'b0)+
		(toSolve[15]==1'b0)+(toSolve[16]==1'b0)+(toSolve[17]==1'b0)+(toSolve[18]==1'b0)+(toSolve[19]==1'b0)+
		(toSolve[20]==1'b0)+(toSolve[21]==1'b0)+(toSolve[22]==1'b0)+(toSolve[23]==1'b0)+(toSolve[24]==1'b0)+
		(toSolve[25]==1'b0)+(toSolve[26]==1'b0)+(toSolve[27]==1'b0)+(toSolve[28]==1'b0)+(toSolve[29]==1'b0)+
		(toSolve[30]==1'b0)+(toSolve[31]==1'b0);
	assign countOfTotalOne=(toSolve[0]==1'b1)+(toSolve[1]==1'b1)+(toSolve[2]==1'b1)+(toSolve[3]==1'b1)+(toSolve[4]==1'b1)+
		(toSolve[5]==1'b1)+(toSolve[6]==1'b1)+(toSolve[7]==1'b1)+(toSolve[8]==1'b1)+(toSolve[9]==1'b1)+
		(toSolve[10]==1'b1)+(toSolve[11]==1'b1)+(toSolve[12]==1'b1)+(toSolve[13]==1'b1)+(toSolve[14]==1'b1)+
		(toSolve[15]==1'b1)+(toSolve[16]==1'b1)+(toSolve[17]==1'b1)+(toSolve[18]==1'b1)+(toSolve[19]==1'b1)+
		(toSolve[20]==1'b1)+(toSolve[21]==1'b1)+(toSolve[22]==1'b1)+(toSolve[23]==1'b1)+(toSolve[24]==1'b1)+
		(toSolve[25]==1'b1)+(toSolve[26]==1'b1)+(toSolve[27]==1'b1)+(toSolve[28]==1'b1)+(toSolve[29]==1'b1)+
		(toSolve[30]==1'b1)+(toSolve[31]==1'b1);
	//------------------------------------------------
	wire [31:0] toSolve1,toSolve2; assign toSolve1=toSolve; assign toSolve2=~toSolve;
	assign countOfLowerZero=((toSolve1&(-toSolve1))==1)?0:((toSolve1&(-toSolve1))==2)?1:((toSolve1&(-toSolve1))==4)?2:((toSolve1&(-toSolve1))==8)?3:
		((toSolve1&(-toSolve1))==16)?4:((toSolve1&(-toSolve1))==32)?5:((toSolve1&(-toSolve1))==64)?6:((toSolve1&(-toSolve1))==128)?7:
		((toSolve1&(-toSolve1))==256)?8:((toSolve1&(-toSolve1))==512)?9:((toSolve1&(-toSolve1))==1024)?10:((toSolve1&(-toSolve1))==2048)?11:
		((toSolve1&(-toSolve1))==4096)?12:((toSolve1&(-toSolve1))==8192)?13:((toSolve1&(-toSolve1))==16384)?14:((toSolve1&(-toSolve1))==32768)?15:
		((toSolve1&(-toSolve1))==65536)?16:((toSolve1&(-toSolve1))==131072)?17:((toSolve1&(-toSolve1))==262144)?18:((toSolve1&(-toSolve1))==524288)?19:
		((toSolve1&(-toSolve1))==1048576)?20:((toSolve1&(-toSolve1))==2097152)?21:((toSolve1&(-toSolve1))==4194304)?22:
		((toSolve1&(-toSolve1))==8388608)?23:((toSolve1&(-toSolve1))==16777216)?24:((toSolve1&(-toSolve1))==33554432)?25:
		((toSolve1&(-toSolve1))==67108864)?26:((toSolve1&(-toSolve1))==134217728)?27:((toSolve1&(-toSolve1))==268435456)?28:
		((toSolve1&(-toSolve1))==536870912)?29:((toSolve1&(-toSolve1))==1073741824)?30:((toSolve1&(-toSolve1))==2147483648)?31:32;
	assign countOfLowerOne=((toSolve2&(-toSolve2))==1)?0:((toSolve2&(-toSolve2))==2)?1:((toSolve2&(-toSolve2))==4)?2:((toSolve2&(-toSolve2))==8)?3:
		((toSolve2&(-toSolve2))==16)?4:((toSolve2&(-toSolve2))==32)?5:((toSolve2&(-toSolve2))==64)?6:((toSolve2&(-toSolve2))==128)?7:
		((toSolve2&(-toSolve2))==256)?8:((toSolve2&(-toSolve2))==512)?9:((toSolve2&(-toSolve2))==1024)?10:((toSolve2&(-toSolve2))==2048)?11:
		((toSolve2&(-toSolve2))==4096)?12:((toSolve2&(-toSolve2))==8192)?13:((toSolve2&(-toSolve2))==16384)?14:((toSolve2&(-toSolve2))==32768)?15:
		((toSolve2&(-toSolve2))==65536)?16:((toSolve2&(-toSolve2))==131072)?17:((toSolve2&(-toSolve2))==262144)?18:((toSolve2&(-toSolve2))==524288)?19:
		((toSolve2&(-toSolve2))==1048576)?20:((toSolve2&(-toSolve2))==2097152)?21:((toSolve2&(-toSolve2))==4194304)?22:
		((toSolve2&(-toSolve2))==8388608)?23:((toSolve2&(-toSolve2))==16777216)?24:((toSolve2&(-toSolve2))==33554432)?25:
		((toSolve2&(-toSolve2))==67108864)?26:((toSolve2&(-toSolve2))==134217728)?27:((toSolve2&(-toSolve2))==268435456)?28:
		((toSolve2&(-toSolve2))==536870912)?29:((toSolve2&(-toSolve2))==1073741824)?30:((toSolve2&(-toSolve2))==2147483648)?31:32;
	//------------------------------------------------
	wire [31:0] toSolve3,toSolve4; assign toSolve3=rollOver; assign toSolve4=~rollOver;
	assign countOfUpperZero=((toSolve3&(-toSolve3))==1)?0:((toSolve3&(-toSolve3))==2)?1:((toSolve3&(-toSolve3))==4)?2:((toSolve3&(-toSolve3))==8)?3:
		((toSolve3&(-toSolve3))==16)?4:((toSolve3&(-toSolve3))==32)?5:((toSolve3&(-toSolve3))==64)?6:((toSolve3&(-toSolve3))==128)?7:
		((toSolve3&(-toSolve3))==256)?8:((toSolve3&(-toSolve3))==512)?9:((toSolve3&(-toSolve3))==1024)?10:((toSolve3&(-toSolve3))==2048)?11:
		((toSolve3&(-toSolve3))==4096)?12:((toSolve3&(-toSolve3))==8192)?13:((toSolve3&(-toSolve3))==16384)?14:((toSolve3&(-toSolve3))==32768)?15:
		((toSolve3&(-toSolve3))==65536)?16:((toSolve3&(-toSolve3))==131072)?17:((toSolve3&(-toSolve3))==262144)?18:((toSolve3&(-toSolve3))==524288)?19:
		((toSolve3&(-toSolve3))==1048576)?20:((toSolve3&(-toSolve3))==2097152)?21:((toSolve3&(-toSolve3))==4194304)?22:
		((toSolve3&(-toSolve3))==8388608)?23:((toSolve3&(-toSolve3))==16777216)?24:((toSolve3&(-toSolve3))==33554432)?25:
		((toSolve3&(-toSolve3))==67108864)?26:((toSolve3&(-toSolve3))==134217728)?27:((toSolve3&(-toSolve3))==268435456)?28:
		((toSolve3&(-toSolve3))==536870912)?29:((toSolve3&(-toSolve3))==1073741824)?30:((toSolve3&(-toSolve3))==2147483648)?31:32;
	assign countOfUpperOne=((toSolve4&(-toSolve4))==1)?0:((toSolve4&(-toSolve4))==2)?1:((toSolve4&(-toSolve4))==4)?2:((toSolve4&(-toSolve4))==8)?3:
		((toSolve4&(-toSolve4))==16)?4:((toSolve4&(-toSolve4))==32)?5:((toSolve4&(-toSolve4))==64)?6:((toSolve4&(-toSolve4))==128)?7:
		((toSolve4&(-toSolve4))==256)?8:((toSolve4&(-toSolve4))==512)?9:((toSolve4&(-toSolve4))==1024)?10:((toSolve4&(-toSolve4))==2048)?11:
		((toSolve4&(-toSolve4))==4096)?12:((toSolve4&(-toSolve4))==8192)?13:((toSolve4&(-toSolve4))==16384)?14:((toSolve4&(-toSolve4))==32768)?15:
		((toSolve4&(-toSolve4))==65536)?16:((toSolve4&(-toSolve4))==131072)?17:((toSolve4&(-toSolve4))==262144)?18:((toSolve4&(-toSolve4))==524288)?19:
		((toSolve4&(-toSolve4))==1048576)?20:((toSolve4&(-toSolve4))==2097152)?21:((toSolve4&(-toSolve4))==4194304)?22:
		((toSolve4&(-toSolve4))==8388608)?23:((toSolve4&(-toSolve4))==16777216)?24:((toSolve4&(-toSolve4))==33554432)?25:
		((toSolve4&(-toSolve4))==67108864)?26:((toSolve4&(-toSolve4))==134217728)?27:((toSolve4&(-toSolve4))==268435456)?28:
		((toSolve4&(-toSolve4))==536870912)?29:((toSolve4&(-toSolve4))==1073741824)?30:((toSolve4&(-toSolve4))==2147483648)?31:32;

endmodule