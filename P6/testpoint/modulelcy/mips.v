`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:29:13 11/20/2021 
// Design Name: 
// Module Name:    mips 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mips(
    input clk,
    input reset,
	 
	 output [31:0] i_inst_addr,
	 input [31:0] i_inst_rdata,
	 
	 input [31:0] m_data_rdata,
	 output [31:0] m_data_addr,
	 output [31:0] m_data_wdata,
	 output [3:0] m_data_byteen,
	 output [31:0] m_inst_addr,
	 output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr
    );
	 
	 wire Stall;
	 //IF
	 wire [31:0]PC;
	 wire [31:0]NPC;
	 wire [31:0]instr;
	 assign i_inst_addr = PC;
	 assign instr = i_inst_rdata;
	 wire PCWr;
	 wire [31:0] Tuse_rs;
	 wire [31:0] Tuse_rt;
	 wire [31:0] Tnew_D;
	 wire [31:0] write_M_final;
	
	
	
	wire equal;
	wire [31:0] NPCOp;
	wire [31:0] PC8;
	wire [31:0] PC4;
	wire [31:0] ra;
	wire [31:0] instr_D;
	
	wire [31:0] PC8_D;
	wire [31:0] PC_D;
	wire [4:0] A1_D;
	wire [4:0] A2_D;
	wire [15:0] Imm_D;
	wire [31:0] PC4_D;
	wire clr_D;
	wire en_D;
	wire [31:0] E32_D;
	wire MD_D;
	
	wire [31:0] RD1;
	wire [31:0] RD2;
	
	wire [31:0] RD1_D;
	wire [31:0] RD2_D;
	
	wire [31:0] EXTOp_D;
	wire [31:0] RegDst_D;
	wire [31:0] ALUASrc_D;
	wire [31:0] ALUBSrc_D;
	wire [31:0] ALUOp_D; 
	wire        MemWr_D;
	wire [31:0] MemtoReg_D;
	wire        RegWr_D;
	wire [31:0] NPCOp_D;
	wire        PCWr_D;
	
	wire [4:0] thirty_one;
	assign thirty_one= 5'b11111;
	wire [4:0] A3_D;
	
	wire [4:0] A1_E;
	wire [4:0] A2_E;
	wire [31:0] RD1_E;
	wire [31:0] RD2_E;
	wire [31:0] E32_E;
	wire [31:0] PC8_E;
	wire [31:0] PC4_E;
	wire [31:0] PC_E;
	wire [31:0] instr_E;
	wire [4:0] A3_E;
	wire [31:0] Tnew_E;
	wire [31:0] MDO_E;
	wire [31:0] MDOp_E;
	
	wire [31:0] EXTOp_E;
	wire [31:0] RegDst_E;
	wire [31:0] ALUASrc_E;
	wire [31:0] ALUBSrc_E;
	wire [31:0] ALUOp_E;
	wire        MemWr_E;
	wire [31:0] MemtoReg_E;
	wire        RegWr_E;
	wire [31:0] NPCOp_E;
	wire        PCWr_E;
	wire start;
	wire A3_W_control;
	

	
	wire [31:0] ALUA;
	wire [31:0] ALUB;
	wire [31:0] RD1_E_final;
	wire [31:0] RD2_E_final;
	
	wire [31:0] AO_E;
	
	wire mfhi_E;
	wire mflo_E;
	wire mthi_E;
	wire mtlo_E;
	
	wire [4:0] A1_M;
	wire [4:0] A2_M;
	wire [31:0] AO_M;
	wire [31:0] RD2_M;
	wire [31:0] PC8_M;
	wire [31:0] PC4_M;
	wire [31:0] PC_M;
	wire [31:0] instr_M;
	wire [4:0] A3_M;
	wire [31:0] Tnew_M;
	wire [31:0] MDO_M;
	
	wire [31:0] DR_M;
	
	wire busy;
	
	wire [31:0] RD2_M_final;
	
	//controller_M
	wire [31:0] EXTOp_M;
	wire [31:0] RegDst_M;
	wire [31:0] ALUASrc_M;
	wire [31:0] ALUBSrc_M;
	wire [31:0] ALUOp_M;
	wire        MemWr_M;
	wire [31:0] MemtoReg_M;
	wire        RegWr_M;
	wire [31:0] NPCOp_M;
	wire        PCWr_M;
	wire [31:0] read_type_M;
	wire [31:0] write_type_M;
	
	wire [31:0] AO_W;
	wire [31:0] DR_W;
	wire [31:0] PC8_W;
	wire [31:0] PC4_W;
	wire [31:0] PC_W;
	wire [31:0] instr_W;
	wire [31:0] Tnew_W;
	wire [4:0] A3_W;
	wire [4:0] A1_W;
	wire [4:0] A2_W;
	wire [31:0] MDO_W;
	
	wire [31:0] WD_W;
	//controller_W
	wire [31:0] EXTOp_W;
	wire [31:0] RegDst_W;
	wire [31:0] ALUASrc_W;
	wire [31:0] ALUBSrc_W;
	wire [31:0] ALUOp_W;
	wire        MemWr_W;
	wire [31:0] MemtoReg_W;
	wire        RegWr_W;
	wire [31:0] NPCOp_W;
	wire        PCWr_W;
	//en
	wire en_E = 0;
	wire en_M = 0;
	wire en_W = 0;
	
	wire clr_delay;
	assign clr_delay=0;
	
	wire BGEZ;
	wire BGTZ;
	wire BLEZ;
	wire BNE;
	wire BLTZ;
	wire BEQ;
	wire [31:0] write_M;
	wire [31:0] write_M_new;
	wire write_M_control;
	wire [4:0] A3_W_initial;
	wire [4:0] A3_W_new;
	//dm
	assign m_data_addr = AO_M;
	assign m_data_wdata = write_M_final;
	assign m_inst_addr = PC_M;
	
	//output
	assign w_grf_we = RegWr_W;
	assign w_grf_addr = A3_W;
	assign w_grf_wdata= WD_W;
	assign w_inst_addr = PC_W;
	
	assign A3_W_control = 0;
	assign A3_W = ( A3_W_control ==0)? A3_W_initial : A3_W_new;
	assign A3_W_new = 5'b0;
	
	PC_IM my_PC_IM(
		.reset(reset),
		.clk(clk),
		.en(Stall),
		.PC(PC),
		.NPC(NPC)
		//.instr(instr)
	);
		
	
	
	NPC my_NPC(
		.equal(equal),
		.PC(PC),
		.NPCOp(NPCOp_D),
		.Imm26(instr_D[25:0] ),
		.PC8(PC8),
		.PC4(PC4),
		.ra(RD1_D),
		.NPC(NPC)
	); 
	
	
	
		
	CU_D my_CU_D(
		.instrI(instr),
		.PC8I(PC8),
		.PC8O(PC8_D),
		.A1O(A1_D),
		.A2O(A2_D),
		.Imm(Imm_D),
		.PC4I(PC4),
		.PC4O(PC4_D),
		.instrO(instr_D),
		.clk(clk),
		.clr(clr_D),
		.reset(reset),
		.en(Stall),
		.PCI(PC),
		.PCO(PC_D)
	);
	
	
	
	controller controller_D(
		.instr(instr_D),
		.EXTOp(EXTOp_D),
		.RegDst(RegDst_D),
		.ALUBSrc(ALUBSrc_D),
		.ALUOp(ALUOp_D),
		.MemWr(MemWr_D),
		.MemtoReg(MemtoReg_D),
		.RegWr(RegWr_D),
		.NPCOp(NPCOp_D),
		.PCWr(PCWr_D),
		.Tuse_rs(Tuse_rs),
		.Tuse_rt(Tuse_rt),
		.Tnew(Tnew_D),
		.MD_D(MD_D),
		.BGEZ(BGEZ),
		.BGTZ(BGTZ),
		.BLEZ(BLEZ),
		.BLTZ(BLTZ),
		.BEQ(BEQ),
		.BNE(BNE)
	);
	
	//staller my_staller(
	//	.Tuse_rs(Tuse_rs),
	//	.Tuse_rt(Tuse_rt),
	//	.Tnew_E(Tnew_E),
	//	.Tnew_M(Tnew_M),
	//	.RegWr_E(RegWr_E),
	//	.RegWr_M(RegWr_M),
	//	.A1_D(A1_D),
	//	.A2_D(A2_D),
	//	.A3_E(A3_E),
	//	.A3_M(A3_M),
	//	.Stall(Stall),
	//	.MD_D(MD_D),
	//	.busy(busy),
	//	.start(start),
	//	.Tnew_W(Tnew_W)
	//);
	
	
	
	
	MUX #5 MA3D(
		.sel(RegDst_D),
		.in0(instr_D[20:16]),
		.in1(instr_D[15:11]),
		.in2(thirty_one),
		.out(A3_D)
	);
			
	
	GRF my_GRF(
		.RegWr(RegWr_W),
		.A1(A1_D),
		.A2(A2_D),
		.A3(A3_W),
		.RD1(RD1),
		.RD2(RD2),
		.WD(WD_W),
		.PC(PC_W),
		.clk(clk),
		.reset(reset)
	);
	
	EXT my_EXT(
		.E16(Imm_D),
		.EXTOp(EXTOp_D),
		.E32(E32_D)
	);
	
	CMP my_CMP(
		.A(RD1_D),
		.B(RD2_D),
		.equal(equal),
		.BGEZ(BGEZ),
		.BGTZ(BGTZ),
		.BLEZ(BLEZ),
		.BLTZ(BLTZ),
		.BEQ(BEQ),
		.BNE(BNE)
	);
	
	
	
	CU CU_E(
		.A1I(A1_D),
		.A1O(A1_E),
		.A2I(A2_D),
		.A2O(A2_E),
		.RD1I(RD1_D),
		.RD1O(RD1_E),
		.RD2I(RD2_D),
		.RD2O(RD2_E),
		.E32I(E32_D),
		.E32O(E32_E),
		.PC8I(PC8_D),
		.PC8O(PC8_E),
		.PC4I(PC4_D),
		.PC4O(PC4_E),
		.instrI(instr_D),
		.instrO(instr_E),
		.A3I(A3_D),
		.A3O(A3_E),
		.clr(Stall),
		.clk(clk),
		.reset(reset),
		.TnewI(Tnew_D),
		.TnewO(Tnew_E),
		.en(en_E),
		.PCI(PC_D),
		.PCO(PC_E)
	);
	
	
	
	controller controller_E(
		.instr(instr_E),
		.EXTOp(EXTOp_E),
		.RegDst(RegDst_E),
		.ALUASrc(ALUASrc_E),
		.ALUBSrc(ALUBSrc_E),
		.ALUOp(ALUOp_E),
		.MemWr(MemWr_E),
		.MemtoReg(MemtoReg_E),
		.RegWr(RegWr_E),
		.NPCOp(NPCOp_E),
		.PCWr(PCWr_E),
		.mfhi(mfhi_E),
		.mflo(mflo_E),
		.mthi(mthi_E),
		.mtlo(mtlo_E),
		.MDOp(MDOp_E),
		.start(start)
	);
	
	
	
	MUX #32 MALUB(
		.in0(RD2_E_final),
		.in1(E32_E),
		.sel(ALUBSrc_E),
		.out(ALUB)
	);
	
	MUX #32 MALUA(
		.in0(RD1_E_final),
		.in1(E32_E),
		.sel(ALUASrc_E),
		.out(ALUA)
	);
	
	mult_div my_mult_div(
		.clk(clk),
		.reset(reset),
		.A(RD1_E_final),
		.B(RD2_E_final),
		.MDOp(MDOp_E),
		.mthi(mthi_E),
		.mfhi(mfhi_E),
		.mtlo(mtlo_E),
		.mflo(mflo_E),
		.MDO(MDO_E),
		.start(start),
		.busy(busy)
	);
	
	ALU my_ALU(
		.A(ALUA),
		.B(ALUB),
		.ALUOp(ALUOp_E),
		.AO(AO_E)
	);
	
	
	
	CU CU_M(
		.A1I(A1_E),
		.A1O(A1_M),
		.A2I(A2_E),
		.A2O(A2_M),
		.RD2I(RD2_E_final),
		.RD2O(RD2_M),
		.PC8I(PC8_E),
		.PC8O(PC8_M),
		.PC4I(PC4_E),
		.PC4O(PC4_M),
		.instrI(instr_E),
		.instrO(instr_M),
		.A3I(A3_E),
		.A3O(A3_M),
		.AOI(AO_E),
		.AOO(AO_M),
		.clk(clk),
		.reset(reset),
		.TnewI(Tnew_E),
		.TnewO(Tnew_M),
		.en(en_M),
		.PCI(PC_E),
		.PCO(PC_M),
		.MDOI(MDO_E),
		.MDOO(MDO_M)
	);
	
	
	
	controller controller_M(
		.instr(instr_M),
		.EXTOp(EXTOp_M),
		.RegDst(RegDst_M),
		.ALUBSrc(ALUBSrc_M),
		.ALUOp(ALUOp_M),
		.MemWr(MemWr_M),
		.MemtoReg(MemtoReg_M),
		.RegWr(RegWr_M),
		.NPCOp(NPCOp_M),
		.PCWr(PCWr_M),
		.read_type(read_type_M),
		.write_type(write_type_M)
	);
	
	
	
	
	//DM my_DM(
	//	.DA(AO_M),
	//	.WD(RD2_M_final),
	//	.DR(DR_M),
	//	.PC(PC_M),
	//	.clk(clk),
	//	.reset(reset),
	//	.read_type(read_type_M),
	//	.write_type(write_type_M),
	//	.MemWr(MemWr_M)
	//);
	
	
	
	CU CU_W(
		.AOI(AO_M),
		.AOO(AO_W),
		.DRI(DR_M),
		.DRO(DR_W),
		.PC8I(PC8_M),
		.PC8O(PC8_W),
		.PC4I(PC4_M),
		.PC4O(PC4_W),
		.instrI(instr_M),
		.instrO(instr_W),
		.A3I(A3_M),
		.A3O(A3_W_initial),
		.clk(clk),
		.reset(reset),
		.TnewI(Tnew_M),
		.TnewO(Tnew_W),
		.en(en_W),
		.PCI(PC_M),
		.PCO(PC_W),
		.A1I(A1_M),
		.A1O(A1_W),
		.A2I(A2_M),
		.A2O(A2_W),
		.MDOI(MDO_M),
		.MDOO(MDO_W)
	);
	
	wire RegWr_W_initial;
	assign RegWr_W = RegWr_W_initial;
	
	controller controller_W(
		.instr(instr_W),
		.EXTOp(EXTOp_W),
		.RegDst(RegDst_W),
		.ALUBSrc(ALUBSrc_W),
		.ALUOp(ALUOp_W),
		.MemWr(MemWr_W),
		.MemtoReg(MemtoReg_W),
		.RegWr(RegWr_W_initial),
		.NPCOp(NPCOp_W),
		.PCWr(PCWr_W)
	);
	
	MUX #32 MWDW(
		.in0(AO_W),
		.in1(DR_W),
		.in2(PC8_W),
		.in3(PC4_W),
		.in4(MDO_W),
		.sel(MemtoReg_W),
		.out(WD_W)
	);
	
	//FORWARD my_FORWARD(
	//	.AO_M(AO_M),
	//	.PC8_M(PC8_M),
	//	.WD_W(WD_W),
	//	.PC8_W(PC8_W),
	//	.RD1(RD1),
	//	.RD2(RD2),
	//	.RD1_E(RD1_E),
	//	.RD2_E(RD2_E),
	//	.RD2_M(RD2_M),
	//	.RD1_D(RD1_D),
	//	.RD2_D(RD2_D),
	//	.RD1_E_final(RD1_E_final),
	//	.RD2_E_final(RD2_E_final),
	//	.RD2_M_final(RD2_M_final),
	//	.A1_D(A1_D),
	//	.A2_D(A2_D),
	//	.A1_E(A1_E),
	//	.A2_E(A2_E),
	//	.A2_M(A2_M),
	//	.A3_M(A3_M),
	//	.A3_W(A3_W),
	//	.RegWr_M(RegWr_M),
	//	.RegWr_W(RegWr_W),
	//	.MemtoReg_M(MemtoReg_M),
	//	.MDO_M(MDO_M),
	//	.Tnew_M(Tnew_M),
	//	.Tnew_W(Tnew_W)
	//);
	
	assign write_M_control = 0;
	assign write_M = (write_M_control == 0)? RD2_M_final: write_M_new; 
	assign write_M_new = 32'b0;
	
	load_write my_load_write(
		.DA(AO_M),
		.DR_now(m_data_rdata),
		.read_type(read_type_M),
		.write_type(write_type_M),
		.MemWr(MemWr_M),
		.DR(DR_M),
		.m_data_byteen(m_data_byteen),
		.RD2_M_final(write_M),
		.write_M_final(write_M_final)
	);
	
	//forward:
	assign RD1_D = ( RegWr_M ==1 && A3_M==A1_D && A1_D!=0 && MemtoReg_M==0 ) ? AO_M :
					( RegWr_M ==1 && A3_M==A1_D && A1_D!=0 && MemtoReg_M==2 ) ? PC8_M :
						( RegWr_M ==1 && A3_M==A1_D && A1_D!=0 && MemtoReg_M==4 ) ? MDO_M :
						( RegWr_W ==1 && A3_W==A1_D && A1_D!=0 ) ? WD_W:
						RD1;
	 
	assign RD2_D = ( RegWr_M ==1 && A3_M==A2_D && A2_D!=0 && MemtoReg_M==0 ) ? AO_M :
						( RegWr_M ==1 && A3_M==A2_D && A2_D!=0 && MemtoReg_M==2 ) ? PC8_M :
						( RegWr_M ==1 && A3_M==A2_D && A2_D!=0 && MemtoReg_M==4 ) ? MDO_M :
						( RegWr_W ==1 && A3_W==A2_D && A2_D!=0 ) ? WD_W:
						RD2;

 	assign RD1_E_final = ( RegWr_M ==1 && A3_M==A1_E && A1_E!=0 && MemtoReg_M==0 ) ? AO_M :
								( RegWr_M ==1 && A3_M==A1_E && A1_E!=0 && MemtoReg_M==2 ) ? PC8_M :
								( RegWr_M ==1 && A3_M==A1_E && A1_E!=0 && MemtoReg_M==4 ) ? MDO_M :
								( RegWr_W ==1 && A3_W==A1_E && A1_E!=0 ) ? WD_W:
								 RD1_E;
	 
	assign RD2_E_final = ( RegWr_M ==1 && A3_M==A2_E && A2_E!=0 && MemtoReg_M==0 ) ? AO_M :
								( RegWr_M ==1 && A3_M==A2_E && A2_E!=0 && MemtoReg_M==2 ) ? PC8_M :
								( RegWr_M ==1 && A3_M==A2_E && A2_E!=0 && MemtoReg_M==4 ) ? MDO_M :
								( RegWr_W ==1 && A3_W==A2_E && A2_E!=0 ) ? WD_W:
								   RD2_E;
	assign RD2_M_final = ( RegWr_W ==1 && A3_W==A2_M && A2_M!=0 ) ? WD_W:
									RD2_M;
	
	//staller
	wire Stall_rs_E =( (Tuse_rs < Tnew_E ) && (A3_E == A1_D ) && (A1_D!=0 ) && (RegWr_E ==1) ) ? 1:0;
	wire Stall_rs_M =( (Tuse_rs < Tnew_M ) && (A3_M == A1_D ) && (A1_D!=0 ) && (RegWr_M ==1) ) ? 1:0;
	wire Stall_rs = Stall_rs_E || Stall_rs_M;
	
	wire Stall_rt_E =( (Tuse_rt < Tnew_E ) && (A3_E == A2_D ) && (A2_D!=0 ) && (RegWr_E ==1) ) ? 1:0;
	wire Stall_rt_M =( (Tuse_rt < Tnew_M ) && (A3_M == A2_D ) && (A2_D!=0 ) && (RegWr_M ==1) ) ? 1:0;
	wire Stall_rt = Stall_rt_E || Stall_rt_M;
	
	wire Stall_busy = (busy|start) & MD_D;
	
	wire violence = ( (Tnew_E>50)||(Tnew_M>50)||(Tnew_W>50) )? 1:0;
	
	//wire stall_new_E = ( new_E==1 && ((Tuse_rs < Tnew_E)||(Tuse_rt < Tnew_E)) && A1_D!=0 && ); //AND addr is same 
	//wire stall_new_M = ( new_M==1 && ((Tuse_rs < Tnew_M)||(Tuse_rt < Tnew_M)) && A2_D!=0 && );//AND addr is same 
	
	assign Stall = Stall_rs | Stall_rt| Stall_busy | violence ;
	
	
endmodule
