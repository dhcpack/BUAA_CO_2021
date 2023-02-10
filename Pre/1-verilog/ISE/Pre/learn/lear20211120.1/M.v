module M (
    input  wire clk, reset, dmwe_M,
    input  wire [31:0] ALUres_M, 
    input  wire [31:0] res_W, wddm_M,
    input  wire [1:0] forward_DM_M,
    input  wire [1:0] dmtype_M,
    input  wire [31:0] commandAddr_M,
    output wire [31:0] DMRes_M
);

    wire [31:0] DMin;

    assign DMin = (forward_DM_M == 2'd1) ? res_W :
                (forward_DM_M == 2'd0) ? wddm_M :
                32'hffff_ffff;  // signal2-3 is remaining


endmodule //M