module NPC (
    input  wire [31:0] commandAddr_D,
    input  wire [31:0] command_D,
    input  wire [31:0] rfrd1_D,
    output wire [31:0] pc_D_B,
    output wire [31:0] pc_D_JJal,
    output wire [31:0] pc_D_Jr,
    output wire [31:0] pc8_D
);

    assign pc_D_B = commandAddr_D + 4 + {{14{command_D[15]}},{command_D[15:0]},2'd0};
    assign pc_D_JJal = {commandAddr_D[31:28],command_D[25:0],2'd0};
    assign pc_D_Jr = rfrd1_D;

    assign pc8_D = commandAddr_D + 8;

endmodule //NPC