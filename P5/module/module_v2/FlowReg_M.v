module FlowReg_M (
    input  wire clk, rfwe_E, dmwe_E,
    input  wire [1:0] rfwdsel_E, dmtype_E,
    input  wire [2:0] tnew_E,
    input  wire [4:0] read2addr_E, writeaddr_E,
    input  wire [31:0] ALUres_E, wddm_E, pc8_E, command_E, commandAddr_E,
    output reg rfwe_M, dmwe_M,
    output reg [1:0] rfwdsel_M, dmtype_M,
    output reg [2:0] tnew_M,
    output reg [4:0] read2addr_M, writeaddr_M,
    output reg [31:0] ALUres_M, wddm_M, pc8_M, command_M, commandAddr_M
);

    initial begin
        rfwe_M <= 1'd0;     dmwe_M <= 1'd0;
        rfwdsel_M <= 2'd0;    dmtype_M <= 2'd0;   tnew_M <= 3'd0;
        read2addr_M <= 5'd0;  writeaddr_M <= 5'd0;
        ALUres_M <= 32'd0;  wddm_M <= 32'd0;    pc8_M <= 32'd0;  command_M <= 32'd0;  commandAddr_M <= 32'd0;
    end

    always @(posedge clk) begin
        rfwe_M <= rfwe_E;          dmwe_M <= dmwe_E;
        rfwdsel_M <= rfwdsel_E;    dmtype_M <= dmtype_E; 
        read2addr_M <= read2addr_E;  writeaddr_M <= writeaddr_E;
        ALUres_M <= ALUres_E;  wddm_M <= wddm_E;     pc8_M <= pc8_E;  command_M <= command_E;  commandAddr_M <= commandAddr_E;
        if(tnew_E != 0) begin
            tnew_M <= tnew_E - 3'd1;
        end
    end

endmodule //FlowReg_M