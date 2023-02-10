// Data Extender for the fucking external DM

`define cDMDataType_sbyte 3'b1_01
`define cDMDataType_ubyte 3'b0_01
`define cDMDataType_shalf 3'b1_10
`define cDMDataType_uhalf 3'b0_10
`define cDMDataType_word  3'b1_11
`define cDMDataType_byte `cDMDataType_sbyte
`define cDMDataType_half `cDMDataType_shalf

module mod_DataExt(
    input   [1:0] iByteOffset,
    input   [2:0] iDMDataType,
    input  [31:0] iDMReadData,
    input  [31:0] iDMWriteData,

    output [31:0] oDMWriteData,
    output [31:0] oDMReadFinal,
    output [31:0] oDMByteEn,

    output oDMAlignException
);
    wire [3:0] bitmask =
(iDMDataType == `cDMDataType_sbyte || iDMDataType == `cDMDataType_ubyte) ? 4'b0001 :
(iDMDataType == `cDMDataType_shalf || iDMDataType == `cDMDataType_uhalf) ? 4'b0011 :
(iDMDataType == `cDMDataType_word) ? 4'b1111 : 4'b0000;
    wire [31:0] bytemask = {
        bitmask[3] ? 8'hff : 8'h00,
        bitmask[2] ? 8'hff : 8'h00,
        bitmask[1] ? 8'hff : 8'h00,
        bitmask[0] ? 8'hff : 8'h00
    };
    wire [4:0] byteShamt = (8 * iByteOffset);

    wire [31:0] dmReadFirst = (iDMReadData >> byteShamt) & bytemask;
    wire [31:0] dmReadFinal =
(iDMDataType == `cDMDataType_sbyte) ? {{24{dmReadFirst [7]}}, dmReadFirst [7:0]} :
(iDMDataType == `cDMDataType_shalf) ? {{24{dmReadFirst[15]}}, dmReadFirst[15:0]} :
    dmReadFirst; // unsigned and word

    assign oDMWriteData = iDMWriteData << byteShamt;
    assign oDMReadFinal = dmReadFinal;
    assign oDMByteEn    = bitmask << iByteOffset;

    assign oDMAlignException =
        (iDMDataType == `cDMDataType_shalf || iDMDataType == `cDMDataType_uhalf) ? (iByteOffset[0] != 0) :
        (iDMDataType == `cDMDataType_word ) ? (iByteOffset != 0) :
            0;
endmodule
