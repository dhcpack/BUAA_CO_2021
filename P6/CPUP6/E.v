`include "constant.v"

module E (
    input  wire clk, reset, startmd_E,
    input  wire [1:0] forward_ALUa_E, forward_ALUb_E,
    input  wire [1:0] asel_E, bsel_E,
    input  wire [3:0] multdivop_E,
    input  wire [4:0] aluop_E, commandtype_E,
    input  wire [31:0] pc8_M, ALUres_M, res_W,
    input  wire [31:0] rfrd1_E, rfrd2_E,
    input  wire [31:0] extres, command_E,
    output wire busy_E,
    output wire [31:0] ALUres_E, registerhi_E, registerlo_E,
    output wire [31:0] wddm_E

);

    wire [31:0] alua, alub;

    assign alua = (forward_ALUa_E == 2'd3) ? pc8_M :
                (forward_ALUa_E == 2'd2) ? ALUres_M :
                (forward_ALUa_E == 2'd1) ? res_W : rfrd1_E;
    assign alub = (forward_ALUb_E == 2'd3) ? pc8_M :
                (forward_ALUb_E == 2'd2) ? ALUres_M :
                (forward_ALUb_E == 2'd1) ? res_W : rfrd2_E;

    assign wddm_E = alub;

	wire [31:0] ALUres_E_before;  // output of ALU
	assign ALUres_E  = 	(commandtype_E == `readmudv && command_E[5:0] == `mfhi) ? registerhi_E :
						(commandtype_E == `readmudv && command_E[5:0] == `mflo) ? registerlo_E :
						ALUres_E_before;

    ALU mainalu(
        .a((asel_E == 2'd0) ? alua : (asel_E == 2'd1) ? extres : 32'd0),// signal2-3 is remaining
        .b((bsel_E == 2'd0) ? alub : (bsel_E == 2'd1) ? extres : 32'd0),// signal2-3 is remaining
        .aluop(aluop_E),
        .res(ALUres_E_before)
    );

    multdiv mainmultdiv(
        .clk(clk),
        .reset(reset),
        .start(startmd_E),
        .multdivop(multdivop_E),
        .a(alua),
        .b(alub),
        .busy(busy_E),
        .registerhi(registerhi_E),
        .registerlo(registerlo_E)
    );

endmodule //E