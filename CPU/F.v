module F (
    input  wire clk,
    input  wire reset,
    input  wire stall_F,
    input  wire [2:0] npcop,
    input  wire branch, jumpto4180,
    input  wire [31:0] pc_D_B, pc_D_JJal, pc_D_Jr, pc_eret,
    output wire wrongpc_F,
    output wire [31:0] currentpc_F
);

    PC mainpc(
        .clk(clk),
        .reset(reset),
        .pcenable(~stall_F),
        .npcop(npcop),
        .pc_D_B(pc_D_B),
        .pc_D_JJal(pc_D_JJal),
        .pc_D_Jr(pc_D_Jr),
        .pc_eret(pc_eret),
        .branch(branch),
        .currentpc_F(currentpc_F),
        .jumpto4180(jumpto4180)
    );

    assign wrongpc_F = (currentpc_F[1:0] != 2'b0 || !(currentpc_F >= 32'h3000 && currentpc_F <= 32'h6ffc)) ? 1'd1 : 1'd0;
endmodule //F
