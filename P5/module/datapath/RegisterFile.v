`timescale 1ns/1ps

module RegisterFile(
		input clk,input reset,
		input regWriteEnabled,
		input [4:0] regReadAddr1,
		input [4:0] regReadAddr2,
		input [4:0] regWriteAddr,
		input [31:0] dataWriteToReg,
		input [31:0] currentCommandAddr,
		output [31:0] regReadData1,
		output [31:0] regReadData2
	);

	integer i; reg [31:0] registerFile[0:31];

	assign regReadData1=(regWriteEnabled && regReadAddr1!=0 && regReadAddr1==regWriteAddr)?dataWriteToReg:registerFile[regReadAddr1];
	assign regReadData2=(regWriteEnabled && regReadAddr2!=0 && regReadAddr2==regWriteAddr)?dataWriteToReg:registerFile[regReadAddr2];

	initial for (i=0;i<32;i=i+1) registerFile[i]<=0;

	always @(posedge clk) begin
		if (reset) for (i=0;i<32;i=i+1) registerFile[i]<=0;
		else if (regWriteEnabled) begin
			if (regWriteAddr) registerFile[regWriteAddr]<=dataWriteToReg;
			$display("%d@%08h: $%d <= %08h",$time,currentCommandAddr,regWriteAddr,dataWriteToReg);
		end
		else begin end
	end

endmodule