module FlowReg_E (
    input  wire clk, CLR_E, rfwe_D, dmwe_D, reset, startmd_D,
    input  wire [1:0] rfwdsel_D, rfwrsel_D, asel_D, bsel_D,
    input  wire [2:0] tnew_D, dmtype_D,
    input  wire [3:0] multdivop_D,
    input  wire [4:0] aluop_D, commandtype_D, read1addr_D, read2addr_D,
    input  wire [31:0] rfrd1_D, rfrd2_D, pc8_D, extres_D, command_D, commandAddr_D,
    output reg rfwe_E, dmwe_E, startmd_E,
    output reg [1:0] rfwdsel_E, rfwrsel_E, asel_E, bsel_E,
    output reg [2:0] tnew_E, dmtype_E,
    output reg [3:0] multdivop_E,
    output reg [4:0] aluop_E, commandtype_E, read1addr_E, read2addr_E,
    output reg [31:0] rfrd1_E, rfrd2_E, pc8_E, extres_E, command_E, commandAddr_E
);

    initial begin
        rfwe_E <= 1'd0;    dmwe_E <= 1'd0;  startmd_E <= 1'd0;
        rfwdsel_E <= 2'd0;  rfwrsel_E <= 2'd0;  asel_E <= 2'd0;      bsel_E <= 2'd0;     dmtype_E <= 3'd0;   tnew_E <= 3'd0;
        multdivop_E <= 3'd0;  aluop_E <= 5'd0;  commandtype_E <= 5'd0;  read1addr_E <= 5'd0; read2addr_E <= 5'd0;
        rfrd1_E <= 32'd0;  rfrd2_E <= 32'd0;    pc8_E <= 32'd0;   extres_E <= 32'd0;  command_E <= 32'd0; commandAddr_E <= 32'd0;
    end

    always @(posedge clk) begin
        if(CLR_E == 1 || reset == 1)begin
            rfwe_E <= 1'd0;     dmwe_E <= 1'd0;  startmd_E <= 1'd0;
            rfwdsel_E <= 2'd0;  rfwrsel_E <= 2'd0;  asel_E <= 2'd0;      bsel_E <= 2'd0;      dmtype_E <= 3'd0;   tnew_E <= 3'd0;
            multdivop_E <= 3'd0;  aluop_E <= 5'd0;   commandtype_E <= 5'd0;   read1addr_E <= 5'd0; read2addr_E <= 5'd0;
            rfrd1_E <= 32'd0;   rfrd2_E <= 32'd0;    pc8_E <= 32'd0;   extres_E <= 32'd0;  command_E <= 32'd0; commandAddr_E <= 32'd0;
        end
        else begin
            rfwe_E <= rfwe_D;     dmwe_E <= dmwe_D;  startmd_E <= startmd_D;
            rfwdsel_E <= rfwdsel_D; rfwrsel_E <= rfwrsel_D;  asel_E <= asel_D;  bsel_E <= bsel_D;  dmtype_E <= dmtype_D;  
            multdivop_E <= multdivop_D;  aluop_E <= aluop_D;  commandtype_E <= commandtype_D;  read1addr_E <= read1addr_D; read2addr_E <= read2addr_D;
            rfrd1_E <= rfrd1_D;   rfrd2_E <= rfrd2_D;         pc8_E <= pc8_D;       extres_E <= extres_D;  command_E <= command_D; commandAddr_E <= commandAddr_D;
            if(tnew_D != 0) begin
                tnew_E <= tnew_D - 3'd1;
            end
            else begin
                tnew_E <= tnew_D;
            end
        end
    end

endmodule //FlowReg_E