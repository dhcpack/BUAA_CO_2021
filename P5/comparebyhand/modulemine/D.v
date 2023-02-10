module D (
    input  wire clk, reset,
    input  wire [1:0] forward_CMPa_D, forward_CMPb_D,
    input  wire [31:0] command_D,
    input  wire [31:0] commandAddr_D,
    input  wire rfwe_W,
	input  wire [4:0] writeaddr_W,
    input  wire [31:0] res_W, commandAddr_W,
    input  wire [31:0] pc8_M, ALUres_M,
    output wire branch_true,
    output wire [31:0] extres, rfrd1_D, rfrd2_D,
    output wire [4:0] read1addr_D, read2addr_D, writeaddr_D,
    output wire rfwe_D, dmwe_D,
    output wire [1:0] wdsel_D, asel_D, bsel_D, dmtype_D,
    output wire [2:0] npcop, tuse_Drs, tuse_Drt, tnew_D,
    output wire [4:0] aluop_D,
    output wire [31:0] pc_D_B, pc_D_JJal, pc_D_Jr, pc8_D
);


    wire [3:0] cmpop;
    wire [31:0] cmpa, cmpb;

    wire [1:0] extop;

    wire [1:0] wrsel_D;
    
    assign read1addr_D = command_D[25:21];
    assign read2addr_D = command_D[20:16];
    assign writeaddr_D = (wrsel_D == 2'd0) ? command_D[20:16] : (wrsel_D == 2'd1) ? command_D[15:11] : (wrsel_D == 2'd2) ? 5'd31 : 5'd0;  // signal3 is remaining

    assign cmpa = (forward_CMPa_D == 2'd2) ? pc8_M :
                (forward_CMPa_D == 2'd1) ? ALUres_M :
                (forward_CMPa_D == 2'd0) ? rfrd1_before_D : 32'hffff_ffff;  // signal3 is remaining
    assign cmpb = (forward_CMPb_D == 2'd2) ? pc8_M :
                    (forward_CMPb_D == 2'd1) ? ALUres_M :
                    (forward_CMPb_D == 2'd0) ? rfrd2_before_D : 32'hffff_ffff;  // signal3 is remaining

    wire [31:0] rfrd1_before_D, rfrd2_before_D;
    assign rfrd1_D = cmpa;
    assign rfrd2_D = cmpb;

    controller maincomtroller(
        .command(command_D),
        .rfwe_D(rfwe_D),
        .dmwe_D(dmwe_D),
        .wrsel_D(wrsel_D),
        .wdsel_D(wdsel_D),
        .extop(extop),
        .asel_D(asel_D),
        .bsel_D(bsel_D),
        .dmtype_D(dmtype_D),
        .tuse_Drs(tuse_Drs),
        .tuse_Drt(tuse_Drt),
        .tnew_D(tnew_D),
        .npcop(npcop),
        .cmpop(cmpop),
        .aluop_D(aluop_D)
    );

    EXT mainext(
        .immoffset(command_D[15:0]),
        .extop(extop),
        .extres(extres)
    );

    RF mainrf(
        .clk(clk),
        .reset(reset),
        .a1(read1addr_D),
        .a2(read2addr_D),
        .a3(writeaddr_W),
        .rfwe(rfwe_W),
        .rfwd(res_W),
        .commandAddr_W(commandAddr_W),
        .rfrd1(rfrd1_before_D),
        .rfrd2(rfrd2_before_D)
    );

    CMP maincmp(
        .cmpa(cmpa),
        .cmpb(cmpb),
        .cmpop(cmpop),
        .branch_true(branch_true)
    );

    NPC mainnpc(
        .commandAddr_D(commandAddr_D),
        .command_D(command_D),
        .rfrd1_D(rfrd1_D),
        .pc_D_B(pc_D_B),
        .pc_D_JJal(pc_D_JJal),
        .pc_D_Jr(pc_D_Jr),
        .pc8_D(pc8_D)
    );



endmodule //D