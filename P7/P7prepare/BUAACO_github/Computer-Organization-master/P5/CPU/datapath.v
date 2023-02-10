`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:18 11/19/2019 
// Design Name: 
// Module Name:    datapath 
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
module datapath(
	input clk,
	input reset,
	input beq,
	input j,
	input jal,
	input [4:0]A3_W,
	input ALUSrc,
	input [1:0]MemtoReg,
	input [1:0]npcsel,
	input RegWrite,
	input MemWrite,
	input [1:0]EXTop,
	input [1:0]ALUctr,
	input [2:0]MCMP1D,
	input [2:0]MCMP2D,
	input [2:0]MALUBE,
	input [2:0]MWDM,
	input [2:0]MALUAE,
	input enD,
	input enPC,
	input clrE,
	output [31:0]IR_D
    );
	wire [31:0]PC0,PC,ADD4,NPC,RFRD1,AO_M,AO_W,DM_W,IR,PC4_D,PC4_W,RFRD2,extout,V1_E,V2_E,E32_E,PC4_E,MFALUBE,AO;
	wire [31:0]V2_M,PC4_M,MFWDM,DR,WD,MFCMP1D,MFCMP2D,MFALUAE,ALUB;
	wire zero;
	
//F������߼�������PC�Ĵ�����IMȡָ�Ԫ��ADD4�߼�
//PC֮ǰ�и����ܶ�ѡ��mux_pc,jr�Ļ�дrs֮ǰ�и�ת����ѡ��MFCMP1D

MUX_PC mux_pc(
	.npcsel(npcsel),
	.ADD4(ADD4),
	.NPC(NPC),
	.MFPCF(MFCMP1D),
	.PC0(PC0)
	);
PC pc(
	.PC0(PC0),
	.clk(clk),
	.reset(reset),
	.en(enPC),
	.PC(PC)
	);
ADD4 add4(
	.PC(PC),
	.PC4(ADD4)
	);
IM im(
	.PC(PC),
	.IR(IR)
	);
	
///////////////////D���Ĵ���
regD regd(
	.IR(IR),
	.ADD4(ADD4),
	.clk(clk),
	.reset(reset),
	.en(enD),
	.IR_D(IR_D),
	.PC4_D(PC4_D)
	);

//D������߼�������NPC��RF�Ĵ����ѡ�EXT��չ��Ԫ���Ƚ���;
//NPC��Ϊ��ת��ָ�������һ��PC�������ӳٲۣ�
//RFΪD��������߼����ͻ�д��Ԫ�ļĴ���;EXT������Ҫ��չ;
//�Ƚ���Ϊbeqָ��ʵ�֣�������֮ǰ�ֱ���һ��ת����·ѡ����MFCMP1D,MFCMP2D
NPC npc(
	.beq(beq),
	.zero(zero),
	.j(j),
	.jal(jal),
	.PC4(PC4_D),
	.imm(IR_D[25:0]),
	.NPC(NPC)
	);
RF rf(
	.A1(IR_D[25:21]),
	.A2(IR_D[20:16]),
	.A3(A3_W),
	.RegWrite(RegWrite),
	.WD(WD),
	.PC4(PC4_W),
	.clk(clk),
	.reset(reset),
	.V1(RFRD1),
	.V2(RFRD2)
	);
EXT ext(
	.imm(IR_D[15:0]),
	.EXTop(EXTop),
	.extout(extout)
	);
	
MFCMP1D mfcmp1d(
	.PC4_M(PC4_M),
	.PC4_W(PC4_W),
	.MCMP1D(MCMP1D),
	.RFRD1(RFRD1),
	.AO_M(AO_M),
	.AO_W(AO_W),
	.DM_W(DM_W),
	.MFCMP1D(MFCMP1D)
	);

MFCMP2D mfcmp2d(
	.PC4_M(PC4_M),
	.PC4_W(PC4_W),
	.MCMP2D(MCMP2D),
	.RFRD2(RFRD2),
	.AO_M(AO_M),
	.AO_W(AO_W),
	.DM_W(DM_W),
	.MFCMP2D(MFCMP2D)
	);

CMP cmp(
	.D1(MFCMP1D),
	.D2(MFCMP2D),
	.zero(zero)
	);

/////////////E���Ĵ���
regE rege(
	.clk(clk),
	.reset(reset),
	.clr(clrE),
	.V1(MFCMP1D),
	.V2(MFCMP2D),
	.E32(extout),
	.PC4(PC4_D),
	.V1_E(V1_E),
	.V2_E(V2_E),
	.E32_E(E32_E),
	.PC4_E(PC4_E)
	);


//E������߼�������ALU��Ԫ��ÿһ·����֮ǰ�и�ת����ѡ��
MFALUBE mfalube(
	.PC4_M(PC4_M),
	.PC4_W(PC4_W),
	.MALUBE(MALUBE),
	.AO_M(AO_M),
	.AO_W(AO_W),
	.DM_W(DM_W),
	.V2_E(V2_E),
	.MFALUBE(MFALUBE)
	);
	
MFALUAE mfaluae(
	.PC4_M(PC4_M),
	.PC4_W(PC4_W),
	.MALUAE(MALUAE),
	.AO_M(AO_M),
	.AO_W(AO_W),
	.DM_W(DM_W),
	.V1_E(V1_E),
	.MFALUAE(MFALUAE)
	);

MUX_ALU mux_alu(
	.V2_E(MFALUBE),
	.E32_E(E32_E),
	.ALUSrc(ALUSrc),
	.B(ALUB)
	);
ALU alu(
	.A(MFALUAE),
	.B(ALUB),
	.ALUctr(ALUctr),
	.ALUout(AO)
	);

////////////M���Ĵ���
regM regm(
	.clk(clk),
	.reset(reset),
	.V2(MFALUBE),
	.AO(AO),
	.PC4(PC4_E),
	.V2_M(V2_M),
	.AO_M(AO_M),
	.PC4_M(PC4_M)
	);

//M������߼���DM�����ĵ�ַ����֮ǰ�и�ת����ѡ��
MFWDM mfwdm(
	.PC4_W(PC4_W),
	.MWDM(MWDM),
	.V2_M(V2_M),
	.AO_W(AO_W),
	.DM_W(DM_W),
	.MFWDM(MFWDM)
	);
DM dm(
	.Addr(AO_M),
	.DIn(MFWDM),
	.MemWrite(MemWrite),
	.clk(clk),
	.reset(reset),
	.PC4(PC4_M),
	.DO(DR)
	);

///////////W���Ĵ���
regW regw(
	.clk(clk),
	.reset(reset),
	.PC4(PC4_M),
	.AO(AO_M),
	.DR(DR),
	.PC4_W(PC4_W),
	.AO_W(AO_W),
	.DR_W(DM_W)
	);

//ѡ���д�����ݵĶ�·ѡ����
MUX_WD mux_wd(
	.PC4_W(PC4_W),
	.AO_W(AO_W),
	.DM_W(DM_W),
	.MemtoReg(MemtoReg),
	.WD(WD)
	);


endmodule
