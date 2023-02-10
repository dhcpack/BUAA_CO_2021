module F (
    input  wire clk,
    input  wire reset,
    input  wire stall_F,
    input  wire [2:0] npcop,
    input  wire branch,
    input  wire [31:0] pc_D_B, pc_D_JJal, pc_D_Jr,
    output wire [31:0] currentpc_F
    //output wire [31:0] command_F
);

    PC mainpc(
        .clk(clk),
        .reset(reset),
        .pcenable(~stall_F),
        .npcop(npcop),
        .pc_D_B(pc_D_B),
        .pc_D_JJal(pc_D_JJal),
        .pc_D_Jr(pc_D_Jr),
        .branch(branch),
        .currentpc_F(currentpc_F)
    );

    // IM mainim(
    //     .address(currentpc_F),
    //     .command(command_F)
    // );

endmodule //F
