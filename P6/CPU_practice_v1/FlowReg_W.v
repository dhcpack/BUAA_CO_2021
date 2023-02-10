module FlowReg_W (
    input  wire clk, rfwe_M, reset, islhrr_M,
    input  wire [1:0] rfwdsel_M, rfwrsel_M,
    input  wire [4:0] commandtype_M,
    input  wire [31:0] ALUres_M, registerhi_M, registerlo_M, DMRes_M, pc8_M, commandAddr_M, command_M,
    output reg rfwe_W, islhrr_W,
    output reg [1:0] rfwdsel_W, rfwrsel_W,
    output reg [4:0] commandtype_W,
    output reg [31:0] ALUres_W, registerhi_W, registerlo_W, DMRes_W, pc8_W, commandAddr_W, command_W
);

    initial begin
        rfwe_W <= 1'd0;  islhrr_W <= 1'd0;
        rfwdsel_W <= 2'd0;  rfwrsel_W <= 2'd0;  commandtype_W <= 5'd0;
        ALUres_W <= 32'd0;  DMRes_W <= 32'd0;  pc8_W <= 32'd0;  commandAddr_W <= 32'd0;   command_W <= 32'd0;
        registerhi_W <= 32'd0;  registerlo_W <= 32'd0;
    end

    always @(posedge clk) begin
        if(reset == 1)begin
            rfwe_W <= 1'd0;  islhrr_W <= 1'd0;
            rfwdsel_W <= 2'd0;  rfwrsel_W <= 2'd0;  commandtype_W <= 5'd0;
            ALUres_W <= 32'd0;  DMRes_W <= 32'd0;  pc8_W <= 32'd0;  commandAddr_W <= 32'd0;  command_W <= 32'd0;
            registerhi_W <= 32'd0;  registerlo_W <= 32'd0;
        end
        else begin
            rfwe_W <= rfwe_M;  islhrr_W <= islhrr_M;
            rfwdsel_W <= rfwdsel_M;  rfwrsel_W <= rfwrsel_M;  commandtype_W <= commandtype_W;
            ALUres_W <= ALUres_M;  DMRes_W <= DMRes_M;  pc8_W <= pc8_M;  commandAddr_W <= commandAddr_M;  command_W <= command_M;
            registerhi_W <= registerhi_M;  registerlo_W <= registerhi_W;
        end
    end

endmodule //FlowReg_W