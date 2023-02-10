module FlowReg_E (
    input  wire clk, CLR_E, rfwe_D, dmwe_D,
    input  wire [1:0] rfwdsel_D, asel_D, bsel_D, dmtype_D, tnew_D,
    input  wire [4:0] aluop_D, read1addr_D, read2addr_D, writeaddr_D,
    input  wire [31:0] rfrd1_D, rfrd2_D, pc8_D, extres_D, command_D, commandAddr_D,
    output reg rfwe_E, dmwe_E,
    output reg [1:0] rfwdsel_E, asel_E, bsel_E, dmtype_E, tnew_E,
    output reg [4:0] aluop_E, read1addr_E, read2addr_E, writeaddr_E,
    output reg [31:0] rfrd1_E, rfrd2_E, pc8_E, extres_E, command_E, commandAddr_E
);