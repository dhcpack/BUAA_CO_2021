module FlowReg_M (
    input  wire clk, rfwe_E, dmwe_E, reset,
    input  wire [1:0] rfwdsel_E, rfwrsel_E,
    input  wire [2:0] tnew_E, dmtype_E,
    input  wire [4:0] read2addr_E, commandtype_E,
    input  wire [31:0] ALUres_E, registerhi_E, registerlo_E, wddm_E, pc8_E, command_E, commandAddr_E,
    output reg rfwe_M, dmwe_M,
    output reg [1:0] rfwdsel_M, rfwrsel_M,
    output reg [2:0] tnew_M, dmtype_M,
    output reg [4:0] read2addr_M, commandtype_M,
    output reg [31:0] ALUres_M, registerhi_M, registerlo_M, wddm_M, pc8_M, command_M, commandAddr_M
);

    initial begin
        rfwe_M <= 1'd0;     dmwe_M <= 1'd0;
        rfwdsel_M <= 2'd0;  rfwrsel_M<= 2'd0;  dmtype_M <= 3'd0;   tnew_M <= 3'd0;
        commandtype_M <= 5'd0;  read2addr_M <= 5'd0;
        ALUres_M <= 32'd0;  wddm_M <= 32'd0;    pc8_M <= 32'd0;  command_M <= 32'd0;  commandAddr_M <= 32'd0;
        registerhi_M <= 32'd0;  registerlo_M <= 32'd0;
    end

    always @(posedge clk) begin
        if(reset == 1) begin
            rfwe_M <= 1'd0;     dmwe_M <= 1'd0;
            rfwdsel_M <= 2'd0;  rfwrsel_M<= 2'd0;  dmtype_M <= 3'd0;   tnew_M <= 3'd0;
            commandtype_M <= 5'd0;  read2addr_M <= 5'd0;
            ALUres_M <= 32'd0;  wddm_M <= 32'd0;    pc8_M <= 32'd0;  command_M <= 32'd0;  commandAddr_M <= 32'd0;
            registerhi_M <= 32'd0;  registerlo_M <= 32'd0;
        end
        else begin
            rfwe_M <= rfwe_E;          dmwe_M <= dmwe_E;
            rfwdsel_M <= rfwdsel_E;  rfwrsel_M<= rfwrsel_E;  dmtype_M <= dmtype_E; 
            commandtype_M <= commandtype_E;  read2addr_M <= read2addr_E;
            ALUres_M <= ALUres_E;  wddm_M <= wddm_E;     pc8_M <= pc8_E;  command_M <= command_E;  commandAddr_M <= commandAddr_E;
            registerhi_M <= registerhi_E;  registerlo_M <= registerlo_E;
            if(tnew_E != 0) begin
                tnew_M <= tnew_E - 3'd1;
            end
            else begin
                tnew_M <= tnew_E;
            end
        end
        
    end

endmodule //FlowReg_M