`timescale 1ns/1ps

module DataMemory(
		input clk,input reset,
		input [3:0] loadWriteMood,
		input [31:0] addrOfDataInMem,
		input memWriteEnabled,
		input [31:0] dataWriteToMem,
		input [31:0] currentCommandAddr,
		output [31:0] dataGiveToReg
	);

	reg [31:0] dataMemory[0:4095]; integer i;
	wire [31:0] loadHalf [1:0]; wire [31:0] loadHalfSign [1:0];
	wire [31:0] loadByte [3:0]; wire [31:0] loadByteSign [3:0];

	assign loadHalf[0]={{16{1'b0}},dataMemory[addrOfDataInMem>>2][15:0]};
	assign loadHalf[1]={{16{1'b0}},dataMemory[addrOfDataInMem>>2][31:16]};
	assign loadHalfSign[0]={{16{dataMemory[addrOfDataInMem>>2][15]}},dataMemory[addrOfDataInMem>>2][15:0]};
	assign loadHalfSign[1]={{16{dataMemory[addrOfDataInMem>>2][31]}},dataMemory[addrOfDataInMem>>2][31:16]};
	//------------------------------------------------
	assign loadByte[0]={{24{1'b0}},dataMemory[addrOfDataInMem>>2][7:0]};
	assign loadByte[1]={{24{1'b0}},dataMemory[addrOfDataInMem>>2][15:8]};
	assign loadByte[2]={{24{1'b0}},dataMemory[addrOfDataInMem>>2][23:16]};
	assign loadByte[3]={{24{1'b0}},dataMemory[addrOfDataInMem>>2][31:24]};
	assign loadByteSign[0]={{24{dataMemory[addrOfDataInMem>>2][7]}},dataMemory[addrOfDataInMem>>2][7:0]};
	assign loadByteSign[1]={{24{dataMemory[addrOfDataInMem>>2][15]}},dataMemory[addrOfDataInMem>>2][15:8]};
	assign loadByteSign[2]={{24{dataMemory[addrOfDataInMem>>2][23]}},dataMemory[addrOfDataInMem>>2][23:16]};
	assign loadByteSign[3]={{24{dataMemory[addrOfDataInMem>>2][31]}},dataMemory[addrOfDataInMem>>2][31:24]};
	//------------------------------------------------
	assign dataGiveToReg=(loadWriteMood[2:1]==0)?dataMemory[addrOfDataInMem>>2]:
		(loadWriteMood[2:1]==1)?(loadWriteMood[0]?(loadHalfSign[addrOfDataInMem[1]]):(loadHalf[addrOfDataInMem[1]])):
		(loadWriteMood[2:1]==2)?(loadWriteMood[0]?(loadByteSign[addrOfDataInMem[1:0]]):(loadByte[addrOfDataInMem[1:0]])):-1;

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