module D (
    input  wire clk, reset,
    input  wire [1:0] forward_CMPa_D, forward_CMPb_D,
    input  wire [31:0] command_D,
    input  wire [31:0] commandAddr_D,
    input  wire [31:0] res_W,
    input  wire [31:0] pc8_M, ALUres_M,
    output wire branch_true,
    output wire [31:0] extres,
    output wire [4:0] read1Addr_D, read2Addr_D, writeAddr_D,
    output wire rfwe_D, dmwe_D,
    output wire [1:0] wdsel_D, asel_D, bsel_D, dmtype_D, tuse_Drs, tuse_Drt, tnew_D,
    output wire [2:0] npcop,
    output wire [4:0] command_type, aluop_D,
    output wire [31:0] pc_D_B, pc_D_JJal, pc_D_Jr, pc8_D
);


    wire [3:0] cmpop;
    wire [31:0] cmpa, cmpb;

    wire [1:0] extop;

    wire [1:0] wrsel_D;
    
    assign read1Addr_D = command[25:21];
    assign read2Addr_D = command[20:16];
    assign writeAddr_D = (wrsel_D == 2'd0) ? command[20:16] : (wrsel_D == 2'd1) ? command[15:11] : (wrsel_D == 2'd2) ? 5'd31 : 5'd0;  // signal3 is remaining
    assign pc_D = commandAddr_D;
    
    assign cmpa = (forward_CMPa_D == 2'd2) ? pc8_M :
                (forward_CMPa_D == 2'd1) ? ALUres_M :
                (forward_CMPa_D == 2'd0) ? rfrd1 : 32'hffff_ffff;  // signal3 is remaining
    assign cmpb = (forward_CMPb_D == 2'd2) ? pc8_M :
                    (forward_CMPb_D == 2'd1) ? ALUres_M :
                    (forward_CMPb_D == 2'd0) ? rfrd2 : 32'hffff_ffff;  // signal3 is remaining

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
        .command_type(command_type),
        .aluop_D(aluop_D)
    );

    EXT mainext(
        .immoffset(command[15:0]),
        .extop(extop),
        .extres(extres)
    );

    RF mainrf(
        .clk(clk),
        .reset(reset),
        .a1(read1Addr_D),
        .a2(read2Addr_D),
        .a3(writeAddr_D),
        .rfwe(rfwe_D),
        .rfwd(res_W),
        .pc_D(pc_D),
        .rfrd1(rfrd1),
        .rfrd2(rfrd2)
    );

    CMP maincmp(
        .cmpa(cmpa),
        .cmpb(cmpb),
        .cmpop(cmpop),
        .branch_true(branch_true)
    );

    NPC mainnpc(
        .pc_D(pc_D),
        .command(command_D),
        .rfrd1(rfrd1),

    );



endmodule //D