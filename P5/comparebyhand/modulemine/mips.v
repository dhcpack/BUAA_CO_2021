module mips (
    input  wire clk, 
    input  wire reset
);

    // outputs of F
    wire [31:0] currentpc_F, command_F;

    // outputs of FlowReg_D
    wire [31:0] command_D, commandAddr_D;

    // outputs of D
    wire branch_true, rfwe_D, dmwe_D;
    wire [1:0] wdsel_D, asel_D, bsel_D, dmtype_D;
    wire [2:0] npcop, tuse_Drs, tuse_Drt, tnew_D;
    wire [4:0] read1addr_D, read2addr_D, writeaddr_D, aluop_D;
    wire [31:0] extres_D, rfrd1_D, rfrd2_D, pc8_D, pc_D_B, pc_D_JJal, pc_D_Jr;

    // outputs of FlowReg_E
    wire rfwe_E, dmwe_E;
	wire [1:0] rfwdsel_E, asel_E, bsel_E, dmtype_E;
	wire [2:0] tnew_E;
	wire [4:0] aluop_E, read1addr_E, read2addr_E, writeaddr_E;
	wire [31:0] rfrd1_E, rfrd2_E, pc8_E, extres_E, command_E, commandAddr_E;

    // outputs of E
    wire [31:0] ALUres_E, wddm_E;

    // outputs of FlowReg_M
    wire rfwe_M, dmwe_M;
	wire [1:0] rfwdsel_M, dmtype_M;
	wire [2:0] tnew_M;
	wire [4:0] read1addr_M, read2addr_M, writeaddr_M;
	wire [31:0] ALUres_M, wddm_M, pc8_M, command_M, commandAddr_M;

	 // outputs of M
	wire [31:0] DMRes_M;

    // outputs of FlowReg_W
	wire rfwe_W;
	wire [1:0] rfwdsel_W;
	wire [4:0] writeaddr_W;
	wire [31:0] ALUres_W, DMRes_W, pc8_W, commandAddr_W;

    // outputs of RiskSolveUnit
	wire stall_F, stall_D, flush_E;
    wire [1:0] forward_CMPa_D, forward_CMPb_D, forward_ALUa_E, forward_ALUb_E, forward_DM_M;

	wire [31:0] res_W;
    // assign
    assign res_W = (rfwdsel_W == 2'd0) ? ALUres_W :
                (rfwdsel_W == 2'd1) ? DMRes_W:
                (rfwdsel_W == 2'd2) ? pc8_W: 32'd0;  // signal3 is remaining
    

    F mainf(
        .clk(clk),
        .reset(reset),
        .stall_F(stall_F),
        .npcop(npcop),
        .branch(branch_true),
        .pc_D_B(pc_D_B),
        .pc_D_JJal(pc_D_JJal),
        .pc_D_Jr(pc_D_Jr),
        .currentpc_F(currentpc_F),
        .command_F(command_F)
    );

    FlowReg_D regd(
        .clk(clk),
		.reset(reset),
        .En_D(~stall_D),
        .command_F(command_F),
        .commandAddr_F(currentpc_F),
        .command_D(command_D),
        .commandAddr_D(commandAddr_D)
    );

    D maind(
        .clk(clk),
        .reset(reset),
        .forward_CMPa_D(forward_CMPa_D),
        .forward_CMPb_D(forward_CMPb_D),
        .command_D(command_D),
        .commandAddr_D(commandAddr_D),
		.rfwe_W(rfwe_W),
		.writeaddr_W(writeaddr_W),
        .res_W(res_W),
		.commandAddr_W(commandAddr_W),
        .pc8_M(pc8_M),
        .ALUres_M(ALUres_M),
        .branch_true(branch_true),
        .extres(extres_D),
		.rfrd1_D(rfrd1_D),
		.rfrd2_D(rfrd2_D),
        .read1addr_D(read1addr_D),
        .read2addr_D(read2addr_D),
        .writeaddr_D(writeaddr_D),
        .rfwe_D(rfwe_D),
        .dmwe_D(dmwe_D),
        .wdsel_D(wdsel_D),
        .asel_D(asel_D),
        .bsel_D(bsel_D),
        .dmtype_D(dmtype_D),
        .tuse_Drs(tuse_Drs),
        .tuse_Drt(tuse_Drt),
        .tnew_D(tnew_D),
        .npcop(npcop),
        .aluop_D(aluop_D),
        .pc_D_B(pc_D_B),
        .pc_D_JJal(pc_D_JJal),
        .pc_D_Jr(pc_D_Jr),
        .pc8_D(pc8_D)
    );

	FlowReg_E rege (
		.clk(clk), 
		.reset(reset),
		.CLR_E(flush_E), 
		.rfwe_D(rfwe_D), 
		.dmwe_D(dmwe_D), 
		.rfwdsel_D(wdsel_D), 
		.asel_D(asel_D), 
		.bsel_D(bsel_D), 
		.dmtype_D(dmtype_D), 
		.tnew_D(tnew_D), 
		.aluop_D(aluop_D), 
		.read1addr_D(read1addr_D), 
		.read2addr_D(read2addr_D), 
		.writeaddr_D(writeaddr_D), 
		.rfrd1_D(rfrd1_D), 
		.rfrd2_D(rfrd2_D), 
		.pc8_D(pc8_D), 
		.extres_D(extres_D), 
		.command_D(command_D), 
		.commandAddr_D(commandAddr_D), 
		.rfwe_E(rfwe_E), 
		.dmwe_E(dmwe_E), 
		.rfwdsel_E(rfwdsel_E), 
		.asel_E(asel_E), 
		.bsel_E(bsel_E), 
		.dmtype_E(dmtype_E), 
		.tnew_E(tnew_E), 
		.aluop_E(aluop_E), 
		.read1addr_E(read1addr_E), 
		.read2addr_E(read2addr_E), 
		.writeaddr_E(writeaddr_E), 
		.rfrd1_E(rfrd1_E), 
		.rfrd2_E(rfrd2_E), 
		.pc8_E(pc8_E), 
		.extres_E(extres_E), 
		.command_E(command_E), 
		.commandAddr_E(commandAddr_E)
	);

	E maine (
		.forward_ALUa_E(forward_ALUa_E), 
		.forward_ALUb_E(forward_ALUb_E), 
		.asel_E(asel_E), 
		.bsel_E(bsel_E), 
		.aluop_E(aluop_E),
		.pc8_M(pc8_M), 
		.ALUres_M(ALUres_M), 
		.res_W(res_W), 
		.rfrd1_E(rfrd1_E), 
		.rfrd2_E(rfrd2_E), 
		.extres(extres_E), 
		.ALUres_E(ALUres_E), 
		.wddm_E(wddm_E)
	);

    FlowReg_M regm (
		.clk(clk), 
		.reset(reset),
		.rfwe_E(rfwe_E), 
		.dmwe_E(dmwe_E), 
		.rfwdsel_E(rfwdsel_E), 
		.dmtype_E(dmtype_E), 
		.tnew_E(tnew_E), 
		.read2addr_E(read2addr_E), 
		.writeaddr_E(writeaddr_E), 
		.ALUres_E(ALUres_E), 
		.wddm_E(wddm_E), 
		.pc8_E(pc8_E), 
		.command_E(command_E), 
		.commandAddr_E(commandAddr_E), 
		.rfwe_M(rfwe_M), 
		.dmwe_M(dmwe_M), 
		.rfwdsel_M(rfwdsel_M), 
		.dmtype_M(dmtype_M), 
		.tnew_M(tnew_M), 
		.read2addr_M(read2addr_M), 
		.writeaddr_M(writeaddr_M), 
		.ALUres_M(ALUres_M), 
		.wddm_M(wddm_M), 
		.pc8_M(pc8_M), 
		.command_M(command_M), 
		.commandAddr_M(commandAddr_M)
	);

    M mainm (
		.clk(clk), 
		.reset(reset), 
		.dmwe_M(dmwe_M), 
		.ALUres_M(ALUres_M), 
		.res_W(res_W), 
		.wddm_M(wddm_M), 
		.forward_DM_M(forward_DM_M), 
		.dmtype_M(dmtype_M), 
		.commandAddr_M(commandAddr_M), 
		.DMRes_M(DMRes_M)
	);

    FlowReg_W regw (
		.clk(clk), 
		.reset(reset),
		.rfwe_M(rfwe_M), 
		.rfwdsel_M(rfwdsel_M), 
		.writeaddr_M(writeaddr_M), 
		.ALUres_M(ALUres_M), 
		.DMRes_M(DMRes_M), 
		.pc8_M(pc8_M),
		.commandAddr_M(commandAddr_M),
		.rfwe_W(rfwe_W), 
		.rfwdsel_W(rfwdsel_W), 
		.writeaddr_W(writeaddr_W), 
		.ALUres_W(ALUres_W), 
		.DMRes_W(DMRes_W), 
		.pc8_W(pc8_W),
		.commandAddr_W(commandAddr_W)
	);

    RiskSolveUnit mainrisksolveunit (
		.rfwe_E(rfwe_E), 
		.rfwe_M(rfwe_M), 
		.rfwe_W(rfwe_W), 
		.read1addr_D(read1addr_D), 
		.read2addr_D(read2addr_D), 
		.read1addr_E(read1addr_E), 
		.read2addr_E(read2addr_E), 
		.read2addr_M(read2addr_M), 
		.writeaddr_E(writeaddr_E), 
		.writeaddr_M(writeaddr_M), 
		.writeaddr_W(writeaddr_W), 
		.forward_CMPa_D(forward_CMPa_D), 
		.forward_CMPb_D(forward_CMPb_D), 
		.forward_ALUa_E(forward_ALUa_E), 
		.forward_ALUb_E(forward_ALUb_E), 
		.forward_DM_M(forward_DM_M), 
		.tuse_Drs(tuse_Drs), 
		.tuse_Drt(tuse_Drt), 
		.tnew_E(tnew_E), 
		.tnew_M(tnew_M), 
		.stall_F(stall_F), 
		.stall_D(stall_D), 
		.flush_E(flush_E), 
		.command_M(command_M)
	);


endmodule //mips