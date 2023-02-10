module FlowReg_W (
    input  wire clk, rfwe_M, reset,
    input  wire [1:0] rfwdsel_M,
    input  wire [4:0] writeaddr_M,
    input  wire [31:0] ALUres_M, DMRes_M, pc8_M, commandAddr_M,
    output reg rfwe_W,
    output reg [1:0] rfwdsel_W,
    output reg [4:0] writeaddr_W,
    output reg [31:0] ALUres_W, DMRes_W, pc8_W, commandAddr_W
);

    initial begin
        rfwe_W <= 1'd0;
        writeaddr_W <= 2'd0;     rfwdsel_W <= 2'd0;
        ALUres_W <= 32'd0;  DMRes_W <= 32'd0;  pc8_W <= 32'd0;  commandAddr_W <= 32'd0;
    end

    always @(posedge clk ) begin
        if(reset == 1)begin
            rfwe_W <= 1'd0;
            writeaddr_W <= 2'd0;     rfwdsel_W <= 2'd0;
            ALUres_W <= 32'd0;  DMRes_W <= 32'd0;  pc8_W <= 32'd0;  commandAddr_W <= 32'd0;
        end
        else begin
            rfwe_W <= rfwe_M;
            writeaddr_W <= writeaddr_M;   rfwdsel_W <= rfwdsel_M;
            ALUres_W <= ALUres_M;  DMRes_W <= DMRes_M;  pc8_W <= pc8_M;  commandAddr_W <= commandAddr_M;
        end
    end

endmodule //FlowReg_W