`timescale 1ns/1ps

/*
	All Lines:
	--------------------------------------------------------------------------------------------------
	currentCommand			extendMood				immToExtend					immAfterExtend
	ALUInputSelect			ALUInputA				ALUInputB					ALUOperation
	ALUOutput				ALUIsZero				regData1					regData2
	writeToReg31			regWriteEnabled			regReadAddr1				regReadAddr2
	regWriteAddr3			dataWriteToReg			selectOfBranchOrNext		selectOfJumpSource
	branchAddr				jumpAddrFormReg			jumpAddrFromImm				currentCommandAddr
	nextCommandAddr			memOrALUToReg			memWriteEnabled				branchControl
	regWriteAddrSelect		loadWriteMood			linkWhenJump				addrOfDataInMem
	dataWriteToMem			dataGiveToReg
	--------------------------------------------------------------------------------------------------
*/

module DataMemory(
		input clk,
		input reset,
		input [2:0] loadWriteMood,
		input [31:0] addrOfDataInMem,
		input memWriteEnabled,
		input [31:0] dataWriteToMem,
		input [31:0] currentCommandAddr,
		output [31:0] dataGiveToReg
	);

	integer i; wire [31:0] memInput;
	reg [31:0] memOutput,dataMemory[0:3071];

	assign dataGiveToReg=memWriteEnabled?-1:memOutput;
	assign memInput=loadWriteMood[2]?
		(
			loadWriteMood[1]?-1:
			(
				addrOfDataInMem[1]?
				(
					addrOfDataInMem[0]?
					{dataWriteToMem[7:0],dataMemory[addrOfDataInMem>>2][23:0]}:
					{dataMemory[addrOfDataInMem>>2][31:24],dataWriteToMem[7:0],dataMemory[addrOfDataInMem>>2][15:0]}
				):(
					addrOfDataInMem[0]?
					{dataMemory[addrOfDataInMem>>2][31:16],dataWriteToMem[7:0],dataMemory[addrOfDataInMem>>2][7:0]}:
					{dataMemory[addrOfDataInMem>>2][31:8],dataWriteToMem[7:0]}
				)
			)
		):(
			loadWriteMood[1]?
			(
				addrOfDataInMem[1]?
				{dataWriteToMem[15:0],dataMemory[addrOfDataInMem>>2][15:0]}:
				{dataMemory[addrOfDataInMem>>2][31:16],dataWriteToMem[15:0]}
			):dataWriteToMem
		);

	initial begin
		memOutput<=0;
		for (i=0;i<3072;i=i+1) dataMemory[i]<=0;
	end

	always @(posedge clk) begin
		if (reset) for (i=0;i<3072;i=i+1) dataMemory[i]<=0;
		else if (memWriteEnabled) begin
			dataMemory[addrOfDataInMem>>2]<=memInput;
			$display("@%08h: *%08h <= %08h",currentCommandAddr,addrOfDataInMem,memInput);
		end
		else begin end
	end

	always @(*) begin
		if (loadWriteMood[2:1]==0) memOutput<=dataMemory[addrOfDataInMem>>2];
		else if (loadWriteMood[2:1]==1) begin
			if (addrOfDataInMem[1]==1 && ~loadWriteMood[0])
				memOutput<={{16{1'b0}},dataMemory[addrOfDataInMem>>2][31:16]};
			else if (addrOfDataInMem[1]==1)
				memOutput<={{16{dataMemory[addrOfDataInMem>>2][31]}},dataMemory[addrOfDataInMem>>2][31:16]};
			else if (~loadWriteMood[0])
				memOutput<={{16{1'b0}},dataMemory[addrOfDataInMem>>2][15:0]};
			else
				memOutput<={{16{dataMemory[addrOfDataInMem>>2][15]}},dataMemory[addrOfDataInMem>>2][15:0]};
		end
		else if (loadWriteMood[2:1]==2) begin
			if (addrOfDataInMem[1:0]==3 && ~loadWriteMood[0])
				memOutput<={{24{1'b0}},dataMemory[addrOfDataInMem>>2][31:24]};
			else if (addrOfDataInMem[1:0]==3)
				memOutput<={{24{dataMemory[addrOfDataInMem>>2][31]}},dataMemory[addrOfDataInMem>>2][31:24]};
			else if (addrOfDataInMem[1:0]==2 && ~loadWriteMood[0])
				memOutput<={{24{1'b0}},dataMemory[addrOfDataInMem>>2][23:16]};
			else if (addrOfDataInMem[1:0]==2)
				memOutput<={{24{dataMemory[addrOfDataInMem>>2][23]}},dataMemory[addrOfDataInMem>>2][23:16]};
			else if (addrOfDataInMem[1:0]==1 && ~loadWriteMood[0])
				memOutput<={{24{1'b0}},dataMemory[addrOfDataInMem>>2][15:8]};
			else if (addrOfDataInMem[1:0]==1)
				memOutput<={{24{dataMemory[addrOfDataInMem>>2][15]}},dataMemory[addrOfDataInMem>>2][15:8]};
			else if (~loadWriteMood[0])
				memOutput<={{24{1'b0}},dataMemory[addrOfDataInMem>>2][7:0]};
			else
				memOutput<={{24{dataMemory[addrOfDataInMem>>2][7]}},dataMemory[addrOfDataInMem>>2][7:0]};
		end
		else memOutput<=-1;
	end

endmodule