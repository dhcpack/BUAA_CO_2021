`include "constant.v"

module CPU (
    input  wire clk, reset,
	input  wire [5:0] interruptrequest,
	input  wire [31:0] command_F, loadfromDM,
	output wire we_cpu, w_grf_we,
	output wire [3:0] m_data_byteen,
	output wire [4:0] w_grf_addr,
	output wire [31:0] w_grf_wdata, w_inst_addr, i_inst_addr,
	output wire [31:0] m_inst_addr,
	output wire [31:0] addr_cpu, data_cpu
);

	assign w_grf_we = rfwe_W;
	assign w_grf_addr = writeaddr_W;
	assign w_grf_wdata = res_W;
	assign w_inst_addr = commandAddr_W;
	assign i_inst_addr = currentpc_F;
	assign m_inst_addr = commandAddr_M;

	assign we_cpu = dmwe_M;

	assign addr_cpu = ALUres_M;

	wire [31:0] data_cpu_before;
	assign data_cpu_before = (forward_DM_M == 2'd1) ? res_W :
							(forward_DM_M == 2'd0) ? wddm_M :
							32'hffff_ffff;  // signal2-3 is remaining
	assign data_cpu  = 	(dmtype_M == `word) ? data_cpu_before :
						(dmtype_M == `half) ? 
							(byte[1] == 0) ? {16'd0, data_cpu_before[15:0]} : {data_cpu_before[15:0], 16'd0} :
						(dmtype_M == `byte) ?
							(byte == 2'd0) ? {24'd0, data_cpu_before[7:0]} :
							(byte == 2'd1) ? {16'd0, data_cpu_before[7:0], 8'd0} :
							(byte == 2'd2) ? {8'd0, data_cpu_before[7:0], 16'd0} :
							{data_cpu_before[7:0], 24'd0} :        32'd0;  // signal0 is remaining
	wire [1:0] byte;
	assign byte = ALUres_M[1:0];
	assign m_data_byteen =	(dmtype_M == `word) ? 4'b1111 : 
							(dmtype_M == `half) ? 
								(byte[1] == 0) ? 4'b0011 : 4'b1100 :
							(dmtype_M == `byte) ? 
								(byte == 2'd0) ? 4'b0001 : (byte == 2'd1) ? 4'b0010 :
								(byte == 2'd2) ? 4'b0100 : 4'b1000         : 4'b0000;  // signal0 is remaining


    // outputs of F
	wire wrongpc_F;
    wire [31:0] currentpc_F;

    // outputs of FlowReg_D
	wire wrongpc_D;
	wire [5:0] interruptrequest_D;
    wire [31:0] command_D, commandAddr_D;

    // outputs of D
    wire branch_true, rfwe_D, dmwe_D, startmd_D, unknowinstr_D;
    wire [1:0] wdsel_D, wrsel_D, asel_D, bsel_D;
    wire [2:0] npcop, tuse_Drs, tuse_Drt, tnew_D, dmtype_D;
	wire [3:0] multdivop_D;
    wire [4:0] read1addr_D, read2addr_D, aluop_D, commandtype_D;
    wire [31:0] extres_D, rfrd1_D, rfrd2_D, pc8_D, pc_D_B, pc_D_JJal, pc_D_Jr;

    // outputs of FlowReg_E
    wire rfwe_E, dmwe_E, startmd_E, wrongpc_E, unknowinstr_E;
	wire [1:0] rfwdsel_E, rfwrsel_E, asel_E, bsel_E;
	wire [2:0] tnew_E, dmtype_E;
	wire [3:0] multdivop_E;
	wire [4:0] aluop_E, commandtype_E, read1addr_E, read2addr_E;
	wire [5:0] interruptrequest_E;
	wire [31:0] rfrd1_E, rfrd2_E, pc8_E, extres_E, command_E, commandAddr_E;

    // outputs of E
	wire busy_E;
    wire [31:0] ALUres_E, wddm_E, registerhi_E, registerlo_E, pc_eret;

    // outputs of FlowReg_M
    wire rfwe_M, dmwe_M;
	wire [1:0] rfwdsel_M, rfwrsel_M;
	wire [2:0] tnew_M, dmtype_M;
	wire [4:0] commandtype_M, read1addr_M, read2addr_M;
	wire [31:0] ALUres_M, wddm_M, pc8_M, command_M, commandAddr_M, registerhi_M, registerlo_M;

	 // outputs of M
	wire [31:0] DMRes_M;

    // outputs of FlowReg_W
	wire rfwe_W;
	wire [1:0] rfwdsel_W, rfwrsel_W;
	wire [4:0] commandtype_W;
	wire [31:0] ALUres_W, DMRes_W, pc8_W, commandAddr_W, command_W, registerhi_W, registerlo_W;

    // outputs of RiskSolveUnit
	wire stall_F, stall_D, flush_E;
    wire [1:0] forward_CMPa_D, forward_CMPb_D, forward_ALUa_E, forward_ALUb_E, forward_DM_M;
	
	// assign

	wire [31:0] res_W;
    assign res_W = (rfwdsel_W == 2'd0) ? ALUres_W :
                (rfwdsel_W == 2'd1) ? DMRes_W:
                (rfwdsel_W == 2'd2) ? pc8_W: 32'd0;  // signal3 is remaining

	// !!!writeaddr_E, writeaddr_M, writeaddr_W aren't connect with each other!!! remember to change next when change 
	wire [4:0] writeaddr_E, writeaddr_M, writeaddr_W;
	
	assign writeaddr_E = (rfwrsel_E == 2'd0) ? command_E[20:16] : 
						(rfwrsel_E == 2'd1) ? command_E[15:11] : 
						(rfwrsel_E == 2'd2) ? 5'd31 : 5'd0;  // signal3 is remaining

	assign writeaddr_M = (rfwrsel_M == 2'd0) ? command_M[20:16] : 
						(rfwrsel_M == 2'd1) ? command_M[15:11] : 
						(rfwrsel_M == 2'd2) ? 5'd31 : 5'd0;  // signal3 is remaining

	assign writeaddr_W = (rfwrsel_W == 2'd0) ? command_W[20:16] : 
						(rfwrsel_W == 2'd1) ? command_W[15:11] : 
						(rfwrsel_W == 2'd2) ? 5'd31 : 5'd0;  // signal3 is remaining'
						
	wire clear_D;
	assign clear_D = (command_D == `eret) ? 1'd1 : 1'd0;
	
	wire isDelay_E;
	assign isDelay_E = (commandtype_M == `jumpandlink ||
						((command_M[31:26] == 6'd0) && (command_M[5:0] == `jr || command_M == `jalr)) ||
						(command_M[31:26] == `beq || command_M[31:26] == `bne || command_M[31:26] == `bgtz || command_M[31:26] == `blez || command_M[31:26] == `j || command_M[31:26] == `jal) ||
						((command_M[31:26] == 6'b000001) && (command_M[20:16] == `bgez || command_M[20:16] == `bltz))) ? 1'd1 : 1'd0;


    F mainf(
        .clk(clk),
        .reset(reset),
        .stall_F(stall_F),
		.wrongpc_F(wrongpc_F),
        .npcop(npcop),
        .branch(branch_true),
		.jumpto4180(jumpto4180),
        .pc_D_B(pc_D_B),
        .pc_D_JJal(pc_D_JJal),
        .pc_D_Jr(pc_D_Jr),
		.pc_eret(pc_eret),
        .currentpc_F(currentpc_F)
    );

    FlowReg_D regd(
        .clk(clk),
		.reset(reset),
        .En_D(~stall_D),
		.clear_D(clear_D),
		.wrongpc_F(wrongpc_F),
		.interruptrequest_F(interruptrequest),
        .command_F(command_F),
        .commandAddr_F(currentpc_F),
		.wrongpc_D(wrongpc_D),
        .command_D(command_D),
        .commandAddr_D(commandAddr_D),
		.interruptrequest_D(interruptrequest_D)
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
		.startmd_D(startmd_D),
        .extres(extres_D),
		.rfrd1_D(rfrd1_D),
		.rfrd2_D(rfrd2_D),
        .read1addr_D(read1addr_D),
		.read2addr_D(read2addr_D),
        .rfwe_D(rfwe_D),
        .dmwe_D(dmwe_D),
		.unknowinstr_D(unknowinstr_D),
        .wdsel_D(wdsel_D),
		.wrsel_D(wrsel_D),
        .asel_D(asel_D),
        .bsel_D(bsel_D),
        .dmtype_D(dmtype_D),
        .tuse_Drs(tuse_Drs),
        .tuse_Drt(tuse_Drt),
        .tnew_D(tnew_D),
        .npcop(npcop),
		.multdivop_D(multdivop_D),
        .aluop_D(aluop_D),
		.commandtype_D(commandtype_D),
        .pc_D_B(pc_D_B),
        .pc_D_JJal(pc_D_JJal),
        .pc_D_Jr(pc_D_Jr),
        .pc8_D(pc8_D)
    );

	FlowReg_E rege (
		.clk(clk), 
		.reset(reset),
		.jumpto4180(jumpto4180),
		.CLR_E(flush_E), 
		.startmd_D(startmd_D),
		.unknowinstr_D(unknowinstr_D),
		.wrongpc_D(wrongpc_D),
		.rfwe_D(rfwe_D), 
		.dmwe_D(dmwe_D), 
		.rfwdsel_D(wdsel_D), 
		.rfwrsel_D(wrsel_D),
		.asel_D(asel_D), 
		.bsel_D(bsel_D), 
		.dmtype_D(dmtype_D), 
		.tnew_D(tnew_D), 
		.multdivop_D(multdivop_D),
		.aluop_D(aluop_D),
		.commandtype_D(commandtype_D),
		.read1addr_D(read1addr_D), 
		.read2addr_D(read2addr_D), 
		.interruptrequest_D(interruptrequest_D),
		.rfrd1_D(rfrd1_D), 
		.rfrd2_D(rfrd2_D), 
		.pc8_D(pc8_D), 
		.extres_D(extres_D), 
		.command_D(command_D), 
		.commandAddr_D(commandAddr_D),
		.startmd_E(startmd_E),
		.unknowinstr_E(unknowinstr_E),
		.wrongpc_E(wrongpc_E),
		.rfwe_E(rfwe_E), 
		.dmwe_E(dmwe_E), 
		.rfwdsel_E(rfwdsel_E),
		.rfwrsel_E(rfwrsel_E),
		.asel_E(asel_E), 
		.bsel_E(bsel_E), 
		.dmtype_E(dmtype_E), 
		.tnew_E(tnew_E), 
		.aluop_E(aluop_E), 
		.commandtype_E(commandtype_E),
		.interruptrequest_E(interruptrequest_E),
		.multdivop_E(multdivop_E),
		.read1addr_E(read1addr_E), 
		.read2addr_E(read2addr_E), 
		.rfrd1_E(rfrd1_E), 
		.rfrd2_E(rfrd2_E), 
		.pc8_E(pc8_E), 
		.extres_E(extres_E), 
		.command_E(command_E), 
		.commandAddr_E(commandAddr_E)
	);

	E maine (
		.clk(clk),
		.reset(reset),
		.startmd_E(startmd_E),
		.isDelay_E(isDelay_E),
		.unknowinstr_E(unknowinstr_E),
		.wrongpc_E(wrongpc_E),
		.forward_ALUa_E(forward_ALUa_E), 
		.forward_ALUb_E(forward_ALUb_E), 
		.asel_E(asel_E), 
		.bsel_E(bsel_E), 				
		.multdivop_E(multdivop_E),
		.aluop_E(aluop_E),
		.commandtype_E(commandtype_E),	
		.interruptrequest_E(interruptrequest_E),
		.pc8_M(pc8_M), 
		.ALUres_M(ALUres_M), 
		.res_W(res_W), 
		.rfrd1_E(rfrd1_E), 
		.rfrd2_E(rfrd2_E), 
		.extres(extres_E), 
		.ALUres_E(ALUres_E),	
		.command_E(command_E),	
		.commandAddr_E(commandAddr_E),	
		.busy_E(busy_E),
		.jumpto4180(jumpto4180),
		.registerhi_E(registerhi_E),
		.registerlo_E(registerlo_E),
		.wddm_E(wddm_E),
		.pc_eret(pc_eret)
	);

    FlowReg_M regm (
		.clk(clk), 
		.reset(reset || jumpto4180),
		.rfwe_E(rfwe_E), 
		.dmwe_E(dmwe_E), 
		.rfwdsel_E(rfwdsel_E), 
		.rfwrsel_E(rfwrsel_E),
		.dmtype_E(dmtype_E), 
		.tnew_E(tnew_E), 
		.read2addr_E(read2addr_E), 
		.commandtype_E(commandtype_E),
		.ALUres_E(ALUres_E),
		.wddm_E(wddm_E), 
		.pc8_E(pc8_E), 
		.command_E(command_E), 
		.commandAddr_E(commandAddr_E), 
		.registerhi_E(registerhi_E),
		.registerlo_E(registerlo_E),
		.rfwe_M(rfwe_M), 
		.dmwe_M(dmwe_M), 
		.rfwdsel_M(rfwdsel_M), 
		.rfwrsel_M(rfwrsel_M),
		.dmtype_M(dmtype_M), 
		.tnew_M(tnew_M), 
		.read2addr_M(read2addr_M), 
		.commandtype_M(commandtype_M),
		.ALUres_M(ALUres_M), 
		.wddm_M(wddm_M), 
		.pc8_M(pc8_M), 
		.command_M(command_M), 
		.commandAddr_M(commandAddr_M),
		.registerhi_M(registerhi_M),
		.registerlo_M(registerlo_M)
	);

    M mainm (
		.byte(byte),
		.loadfromDM(loadfromDM),
		.dmtype_M(dmtype_M),
		.DMRes_M(DMRes_M)
	);

    FlowReg_W regw (
		.clk(clk), 
		.reset(reset),
		.rfwe_M(rfwe_M), 
		.rfwdsel_M(rfwdsel_M), 
		.rfwrsel_M(rfwrsel_M),
		.commandtype_M(commandtype_M),
		.ALUres_M(ALUres_M), 
		.DMRes_M(DMRes_M), 
		.pc8_M(pc8_M),
		.commandAddr_M(commandAddr_M),
		.command_M(command_M),
		.registerhi_M(registerhi_M),
		.registerlo_M(registerlo_M),
		.rfwe_W(rfwe_W), 
		.rfwdsel_W(rfwdsel_W),
		.rfwrsel_W(rfwrsel_W),
		.commandtype_W(commandtype_W), 
		.ALUres_W(ALUres_W), 
		.DMRes_W(DMRes_W), 
		.pc8_W(pc8_W),
		.commandAddr_W(commandAddr_W),
		.command_W(command_W),
		.registerhi_W(registerhi_W),
		.registerlo_W(registerlo_W)
	);

    RiskSolveUnit mainrisksolveunit (
		.rfwe_E(rfwe_E), 
		.rfwe_M(rfwe_M), 
		.rfwe_W(rfwe_W), 
		.busy_E(busy_E),
		.startmd_E(startmd_E),
		.read1addr_D(read1addr_D), 
		.read2addr_D(read2addr_D), 
		.read1addr_E(read1addr_E), 
		.read2addr_E(read2addr_E), 
		.read2addr_M(read2addr_M), 
		.writeaddr_E(writeaddr_E), 
		.writeaddr_M(writeaddr_M), 
		.writeaddr_W(writeaddr_W), 
		.commandtype_D(commandtype_D),
		.commandtype_E(commandtype_E),
		.commandtype_M(commandtype_M),
		.commandtype_W(commandtype_W),
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
		.command_E(command_E),
		.command_M(command_M),
		.command_W(command_W)
	); 

endmodule //CPU