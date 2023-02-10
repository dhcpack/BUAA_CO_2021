module E (
    input  wire [1:0] forward_ALUa_E, forward_ALUb_E,
    input  wire [1:0] asel_E, bsel_E,
    input  wire [31:0] pc8_M, ALUres_M, res_W,
    input  wire [31:0] rfrd1_E, rfrd2_E,
    input  wire [31:0] extres,
    output wire [31:0] ALUres_E,
    output wire [31:0] wddm_E

);

    wire [31:0] alua, alub;

    assign alua = (forward_ALUa_E == 2'd3) ? pc8_M :
                (forward_ALUa_E == 2'd2) ? ALUres_M :
                (forward_ALUa_E == 2'd1) ? res_W : rfrd1_E;
    assign alub = (forward_ALUb_E == 2'd3) ? pc8_M :
                (forward_ALUb_E == 2'd2) ? ALUres_M :
                (forward_ALUb_E == 2'd1) ? res_W : rfrd1_E;

    assign wddm_E = alub;


endmodule //E