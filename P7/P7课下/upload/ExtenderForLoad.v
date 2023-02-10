`timescale 1ns/1ps

module ExtenderForLoad(
		input [1:0] addrOfDataInWB,
		input [2:0] loadWriteMood,
		input [31:0] dataToExtend,
		output [31:0] dataExtended
	);

	wire [31:0] loadHalf [1:0]; wire [31:0] loadHalfSign [1:0];
	wire [31:0] loadByte [3:0]; wire [31:0] loadByteSign [3:0];

	assign loadHalf[0]={{16{1'b0}},dataToExtend[15:0]};
	assign loadHalf[1]={{16{1'b0}},dataToExtend[31:16]};
	assign loadHalfSign[0]={{16{dataToExtend[15]}},dataToExtend[15:0]};
	assign loadHalfSign[1]={{16{dataToExtend[31]}},dataToExtend[31:16]};
	//------------------------------------------------
	assign loadByte[0]={{24{1'b0}},dataToExtend[7:0]};
	assign loadByte[1]={{24{1'b0}},dataToExtend[15:8]};
	assign loadByte[2]={{24{1'b0}},dataToExtend[23:16]};
	assign loadByte[3]={{24{1'b0}},dataToExtend[31:24]};
	assign loadByteSign[0]={{24{dataToExtend[7]}},dataToExtend[7:0]};
	assign loadByteSign[1]={{24{dataToExtend[15]}},dataToExtend[15:8]};
	assign loadByteSign[2]={{24{dataToExtend[23]}},dataToExtend[23:16]};
	assign loadByteSign[3]={{24{dataToExtend[31]}},dataToExtend[31:24]};
	//------------------------------------------------
	assign dataExtended=(loadWriteMood[2:1]==0)?dataToExtend:
		(loadWriteMood[2:1]==1)?(loadWriteMood[0]?(loadHalfSign[addrOfDataInWB[1]]):(loadHalf[addrOfDataInWB[1]])):
		(loadWriteMood[2:1]==2)?(loadWriteMood[0]?(loadByteSign[addrOfDataInWB[1:0]]):(loadByte[addrOfDataInWB[1:0]])):-1;

endmodule