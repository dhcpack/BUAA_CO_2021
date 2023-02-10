`timescale 1ns/1ps

module EXErrorJudgeUnit(
		input [5:0] operationCodeInEX,
		input aluOverFlowInEX,
		input cuOverFlowInEX,
		input [31:0] ansFromAluInEX,
		output [4:0] errorCodeInEX
	);

	wire errorLoadInstr,errorStoreInstr,modTwoNotZero,modFourNotZero,isDataMemoryAddress,isTimerAddress,outOfAddrRange,aimIsTimerCount;

	assign modTwoNotZero=(ansFromAluInEX&1)!=0;
	assign modFourNotZero=(ansFromAluInEX&3)!=0;
	assign isDataMemoryAddress=(32'h0<=ansFromAluInEX) && (ansFromAluInEX<32'h3000);
	assign isTimerAddress=((32'h7F00<=ansFromAluInEX) && (ansFromAluInEX<32'h7F0B)) || ((32'h7F10<=ansFromAluInEX) && (ansFromAluInEX<32'h7F1B));
	assign aimIsTimerCount=isTimerAddress && ((ansFromAluInEX&15)==8);
	assign outOfAddrRange=!(isDataMemoryAddress || isTimerAddress);
	assign errorLoadInstr=((operationCodeInEX==6'b100000) && (aluOverFlowInEX || isTimerAddress || outOfAddrRange))//lb
		|| ((operationCodeInEX==6'b100100) && (aluOverFlowInEX || isTimerAddress || outOfAddrRange))//lbu
		|| ((operationCodeInEX==6'b100001) && (aluOverFlowInEX || modTwoNotZero || isTimerAddress || outOfAddrRange))//lh
		|| ((operationCodeInEX==6'b100101) && (aluOverFlowInEX || modTwoNotZero || isTimerAddress || outOfAddrRange))//lhu
		|| ((operationCodeInEX==6'b100011) && (aluOverFlowInEX || modFourNotZero || outOfAddrRange));//lw
	assign errorStoreInstr=((operationCodeInEX==6'b101000) && (aluOverFlowInEX || isTimerAddress || outOfAddrRange))//sb
		|| ((operationCodeInEX==6'b101001) && (aluOverFlowInEX || modTwoNotZero || isTimerAddress || outOfAddrRange))//sh
		|| ((operationCodeInEX==6'b101011) && (aluOverFlowInEX || modFourNotZero || outOfAddrRange || aimIsTimerCount));//sw
	assign errorCodeInEX=(aluOverFlowInEX&cuOverFlowInEX)?5'hc:errorLoadInstr?5'h4:errorStoreInstr?5'h5:5'h0;

endmodule