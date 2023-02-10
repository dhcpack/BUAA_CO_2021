`timescale 1ns/1ps

module SystemBridge(
		input memWriteEnabled,
		input [31:0] memReadOrWriteAddr,
		input [31:0] dataToRegFromMem,
		input [31:0] dataToRegFromTimer1,
		input [31:0] dataToRegFromTimer2,
		output [31:0] addrOfDataInMem,
		output [31:0] addrOfDataInTimer1,
		output [31:0] addrOfDataInTimer2,
		output writeEnabledOfMem,
		output writeEnabledOfTimer1,
		output writeEnabledOfTimer2,
		output [31:0] memDataToReg
	);

	wire isSolvingMem,isSolvingTimer1,isSolvingTimer2;

	assign isSolvingMem=memReadOrWriteAddr<=32'h3000;
	assign isSolvingTimer1=(32'h7F00<=memReadOrWriteAddr) && (memReadOrWriteAddr<=32'h7F0F);
	assign isSolvingTimer2=(32'h7F10<=memReadOrWriteAddr) && (memReadOrWriteAddr<=32'h7F1F);
	//------------------------------------------------
	assign addrOfDataInMem=memReadOrWriteAddr;
	assign addrOfDataInTimer1=memReadOrWriteAddr;
	assign addrOfDataInTimer2=memReadOrWriteAddr;
	//------------------------------------------------
	assign writeEnabledOfMem=memWriteEnabled&isSolvingMem;
	assign writeEnabledOfTimer1=memWriteEnabled&isSolvingTimer1;
	assign writeEnabledOfTimer2=memWriteEnabled&isSolvingTimer2;
	//------------------------------------------------
	assign memDataToReg=isSolvingMem?dataToRegFromMem:isSolvingTimer1?dataToRegFromTimer1:isSolvingTimer2?dataToRegFromTimer2:32'b1;

endmodule