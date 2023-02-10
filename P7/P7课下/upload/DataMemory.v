`timescale 1ns/1ps

module DataMemory(
		input clk,input reset,
		input [2:0] loadWriteMood,
		input [31:0] addrOfDataInMem,
		input memWriteEnabled,
		input [31:0] dataWriteToMem,
		input [31:0] currentCommandAddr,
		output [31:0] dataGiveToReg
	);

	reg [31:0] dataMemory[0:4095]; integer i;

	assign dataGiveToReg=dataMemory[addrOfDataInMem>>2];

	initial for (i=0;i<4096;i=i+1) dataMemory[i]<=0;

	always @(posedge clk) begin
		if (reset) for (i=0;i<4096;i=i+1) dataMemory[i]<=0;
		else if (memWriteEnabled) begin
			if (loadWriteMood[2:1]==0) begin
				dataMemory[addrOfDataInMem>>2]<=dataWriteToMem;
				$display("%d@%08h: *%08h <= %08h",$time,currentCommandAddr,(addrOfDataInMem>>2)<<2,dataWriteToMem);
			end
			else if (loadWriteMood[2:1]==1) begin
				if (addrOfDataInMem[1]) begin
					dataMemory[addrOfDataInMem>>2][31:16]<=dataWriteToMem[15:0];
					$display("%d@%08h: *%08h <= %08h",$time,currentCommandAddr,(addrOfDataInMem>>2)<<2,
						{dataWriteToMem[15:0],dataMemory[addrOfDataInMem>>2][15:0]});
				end
				else begin
					dataMemory[addrOfDataInMem>>2][15:0]<=dataWriteToMem[15:0];
					$display("%d@%08h: *%08h <= %08h",$time,currentCommandAddr,(addrOfDataInMem>>2)<<2,
						{dataMemory[addrOfDataInMem>>2][31:16],dataWriteToMem[15:0]});
				end
			end
			else if (loadWriteMood[2:1]==2) begin
				if (addrOfDataInMem[1:0]==0) begin
					dataMemory[addrOfDataInMem>>2][7:0]<=dataWriteToMem[7:0];
					$display("%d@%08h: *%08h <= %08h",$time,currentCommandAddr,(addrOfDataInMem>>2)<<2,
						{dataMemory[addrOfDataInMem>>2][31:8],dataWriteToMem[7:0]});
				end
				else if (addrOfDataInMem[1:0]==1) begin
					dataMemory[addrOfDataInMem>>2][15:8]<=dataWriteToMem[7:0];
					$display("%d@%08h: *%08h <= %08h",$time,currentCommandAddr,(addrOfDataInMem>>2)<<2,
						{dataMemory[addrOfDataInMem>>2][31:16],dataWriteToMem[7:0],dataMemory[addrOfDataInMem>>2][7:0]});
				end
				else if (addrOfDataInMem[1:0]==2) begin
					dataMemory[addrOfDataInMem>>2][23:16]<=dataWriteToMem[7:0];
					$display("%d@%08h: *%08h <= %08h",$time,currentCommandAddr,(addrOfDataInMem>>2)<<2,
						{dataMemory[addrOfDataInMem>>2][31:24],dataWriteToMem[7:0],dataMemory[addrOfDataInMem>>2][15:0]});
				end
				else begin
					dataMemory[addrOfDataInMem>>2][31:24]<=dataWriteToMem[7:0];
					$display("%d@%08h: *%08h <= %08h",$time,currentCommandAddr,(addrOfDataInMem>>2)<<2,
						{dataWriteToMem[7:0],dataMemory[addrOfDataInMem>>2][23:0]});
				end
			end
			else begin end
		end
		else begin end
	end

endmodule