`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:05:12 11/20/2021 
// Design Name: 
// Module Name:    controller 
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
`define special 6'b000000
//L
`define lw    6'b100011
`define lb    6'b100000
`define lbu   6'b100100
`define lh    6'b100001
`define lhu   6'b100101
//S
`define sw    6'b101011
`define sb    6'b101000
`define sh    6'b101001

//mult&div
`define mult  6'b011000 // special
`define multu 6'b011001 // special
`define div   6'b011010 // special
`define divu  6'b011011 // special
//cal_rr
`define sll   6'b000000 // special
`define srl   6'b000010 // special
`define sra   6'b000011 // special
`define sllv  6'b000100 // special
`define srlv  6'b000110 // special
`define srav  6'b000111 // special
//cal_rr
`define add   6'b100000 // special
`define sub   6'b100010 // special
`define addu  6'b100001 // special
`define subu  6'b100011 // special
`define AND   6'b100100 // special
`define OR    6'b100101 // special
`define XOR   6'b100110 // special
`define NOR   6'b100111 // special
`define slt   6'b101010 // special
`define sltu  6'b101011 // special
//cal_ri
`define ori   6'b001101
`define addi  6'b001000
`define addiu 6'b001001
`define andi  6'b001100
`define xori  6'b001110
//cal_ri
`define slti  6'b001010
`define sltiu 6'b001011 

//br
`define beq   6'b000100
`define bne   6'b000101 
`define blez  6'b000110 
`define bgtz  6'b000111 
`define bltz  5'b00000
`define bgez  5'b00001
//J_
`define jr    6'b001000 // special
`define j     6'b000010
`define jal   6'b000011
`define jalr  6'b001001 // special
//MF
`define mfhi  6'b010000 // special
`define mflo  6'b010010 // special
//MT
`define mthi  6'b010001 // special
`define mtlo  6'b010011 // special

//LUI
`define lui   6'b001111

`define COP0  6'b010000
module controller(
    input [31:0]instr,
    output [31:0] EXTOp,
    output [31:0] RegDst,
    output [31:0] ALUBSrc,
    output [31:0] ALUOp ,
    output MemWr,
    output [31:0] MemtoReg,
	 output RegWr,
    output [31:0] NPCOp,
    output PCWr,
	 output [31:0] read_type,
	 output [31:0] write_type,
	 output  [31:0]Tuse_rs,
	 output  [31:0]Tuse_rt,
	 output [31:0] Tnew,
	 output mfhi,
	 output mflo,
	 output mthi,
	 output mtlo,
	 output [31:0] ALUASrc,
	 output [31:0] MDOp,
	 output start,
	 output MD_D,
	 output BGEZ,
	 output BGTZ,
	 output BLEZ,
	 output BLTZ,
	 output BEQ,
	 output BNE,
	 output RI,
	 output ERET,
	 output MTC0,
	 output MFC0,
	 output BD_pre,
	 output ADD,
	 output ADDI,
	 output SUB,
	 output L,
	 output S,
	 output LW,
	 output SW,
	 output [4:0] rd
    );
	wire ADDU,SUBU,SLT,SLTU,AND,NOR,OR,XOR,SLLV,SRAV,SRLV;
	wire ADDIU,SLTI,SLTIU,ANDI,ORI,XORI,SLL,SRA,SRL;
	//wire BGEZ,BGTZ,BLEZ,BLTZ,BEQ,BNE;
	wire LH,LHU,LB,LBU;
	wire SH,SB;
	wire MULT,MULTU,DIV,DIVU;
	wire LUI,JAL,JALR,JR,J;
	wire MFHI,MFLO,MTHI,MTLO;
	wire SPECIAL;
	wire [5:0] Op;
	wire [5:0] Funct;
	
	assign  mfhi=MFHI;
	assign  mflo=MFLO;
	assign  mthi=MTHI;
	assign  mtlo=MTLO;
	
	wire mult_div,cal_rr,cal_ri,br,J_,MF,MT;
	//wire T_ALU;
	//wire T_DM;
	assign Funct = instr[5:0];
	assign Op= instr[31:26];
	assign SPECIAL = (Op==`special) ? 1:0;
	assign rd =  instr[15:11];
	
	
	//Tnew
	
	
	assign Tuse_rs = ( L|S|cal_ri|cal_rr|MT|mult_div) ? 1: 
						  (br|JR|JALR) ? 0:
						  3; 
						 
	assign Tuse_rt = (cal_rr|mult_div )? 1:
						  (S|MTC0) ? 2:
						  (BEQ|BNE)? 0:
						  3;	
						  
	assign Tnew = (L|MFC0) ? 3://Tnew == 100 is baoli stall 
					  (LUI|cal_rr|cal_ri|MF|MT|JR|JALR)? 2:
					  0;
	//L
	assign LW=(Op==`lw)? 1:0;
	assign LB=(Op==`lb)? 1:0;
	assign LBU=(Op==`lbu)? 1:0;
	assign LH=(Op==`lh)? 1:0;
	assign LHU=(Op==`lhu)? 1:0;
	//S
	assign SW=(Op==`sw)? 1:0;
	assign SB=(Op==`sb)? 1:0;
	assign SH=(Op==`sh)? 1:0;
	//mult_div
	assign MULT=(SPECIAL==1&&Funct==`mult)? 1:0;
	assign MULTU=(SPECIAL==1&&Funct==`multu)? 1:0;
	assign DIV=(SPECIAL==1&&Funct==`div)? 1:0;
	assign DIVU=(SPECIAL==1&&Funct==`divu)? 1:0;
	//cal_rr
	assign SLL= (SPECIAL==1&&Funct==`sll)? 1:0;
	assign SRL= (SPECIAL==1&&Funct==`srl)? 1:0;
	assign SRA= (SPECIAL==1&&Funct==`sra)? 1:0;
	assign SLLV= (SPECIAL==1&&Funct==`sllv)? 1:0;
	assign SRLV= (SPECIAL==1&&Funct==`srlv)? 1:0;
	assign SRAV= (SPECIAL==1&&Funct==`srav)? 1:0;
	assign ADD= (SPECIAL==1&&Funct==`add)? 1:0;
	assign SUB= (SPECIAL==1&&Funct==`sub)? 1:0;
	assign ADDU= (SPECIAL==1&&Funct==`addu)? 1:0;
	assign SUBU= (SPECIAL==1&&Funct==`subu)? 1:0;
	assign AND= (SPECIAL==1&&Funct==`AND)? 1:0;
	assign OR= (SPECIAL==1&&Funct==`OR)? 1:0;
	assign XOR= (SPECIAL==1&&Funct==`XOR)? 1:0;
	assign NOR= (SPECIAL==1&&Funct==`NOR)? 1:0;
	assign SLT= (SPECIAL==1&&Funct==`slt)? 1:0;
	assign SLTU= (SPECIAL==1&&Funct==`sltu)? 1:0;
	//cal_ri
	assign ORI = (Op==`ori) ? 1 : 0 ;
	assign ADDI = (Op==`addi) ? 1 : 0 ;
	assign ADDIU = (Op==`addiu) ? 1 : 0 ;
	assign ANDI = (Op==`andi) ? 1 : 0 ;
	assign XORI = (Op==`xori) ? 1 : 0 ;
	assign SLTI = (Op==`slti) ? 1 : 0 ;
	assign SLTIU = (Op==`sltiu) ? 1 : 0 ;
	//br
	assign BEQ = (Op==`beq) ? 1 : 0 ;
	assign BNE = (Op==`bne) ? 1 : 0 ;
	assign BLEZ = (Op==`blez) ? 1 : 0 ;
	assign BGTZ = (Op==`bgtz) ? 1 : 0 ;
	assign BLTZ = (Op==6'b000001 && instr[20:16]== `bltz) ? 1 : 0 ;
	assign BGEZ = (Op==6'b000001 && instr[20:16]== `bgez) ? 1 : 0 ;
	//J
	assign JR = (SPECIAL==1&&Funct==`jr) ? 1 : 0 ;
	assign J = (Op==`j) ? 1 : 0 ;
	assign JAL = (Op==`jal) ? 1 : 0 ;
	assign JALR = (SPECIAL==1&&Funct==`jalr) ? 1 : 0 ;
	//MF
	assign MFHI = (SPECIAL==1&&Funct==`mfhi) ? 1 : 0 ;
	assign MFLO = (SPECIAL==1&&Funct==`mflo) ? 1 : 0 ;
	//MT
	assign MTHI = (SPECIAL==1&&Funct==`mthi) ? 1 : 0 ;
	assign MTLO = (SPECIAL==1&&Funct==`mtlo) ? 1 : 0 ;
	//LUI
	assign LUI = (Op == `lui) ? 1: 0;
	//CP0
	assign ERET = (Op == `COP0 && Funct== 6'b011000 ) ? 1:0;
	assign MTC0 = (Op == `COP0 && instr[25:21]== 5'b00100 ) ? 1:0;
	assign MFC0 = (Op == `COP0 && instr[25:21]== 5'b00000 ) ? 1:0;
	
	
	//assign T_ALU = ()?1:0;
	//assign T_DM = (
	
	assign L = (LW|LB|LBU|LH|LHU)? 1:0;
	assign S = (SW|SB|SH) ? 1:0;
	assign mult_div = (MULT|MULTU|DIV|DIVU)? 1:0;
	assign cal_rr = (SLL|SRL|SRA|SLLV|SRLV|SRAV|ADD|SUB|ADDU|SUBU|AND|OR|XOR|NOR|SLT|SLTU) ? 1:0;
	assign cal_ri = (ORI|ADDI|ADDIU|ANDI|XORI|SLTI|SLTIU) ? 1:0;
	assign br = (BEQ|BNE|BLEZ|BGTZ|BLTZ|BGEZ) ? 1:0;
	assign J_ = (JR|J|JAL|JALR) ? 1:0;
	assign MF = (MFHI|MFLO) ? 1:0;
	assign MT = (MTHI|MTLO)? 1:0;
	
	assign BD_pre = (J_|br);
	
	assign RI= !(L|S|mult_div|cal_rr|cal_ri|br|J_|MF|MT|LUI|ERET|MTC0|MFC0) ;
	//
	assign MD_D = MF|MT|mult_div;
	
	assign EXTOp=(L|S|ADDI|ADDIU|SLTI|SLTIU) ? 1: 
					 (LUI)?                        2:
					 (SRL|SRA|SLL) ?               3:
					 0;
					 
	assign RegDst=(cal_rr|JALR|MF)?  1:
					  (cal_ri|L|LUI|MFC0) ? 0:
					  (JAL)?   2:
					   100;// 100 means don't write
	assign ALUASrc=(SLL|SRL|SRA) ? 1:0;
	assign ALUBSrc=(L|S|cal_ri|LUI)? 1 : 0;
					 
	assign ALUOp =(ANDI|AND) ? 0:
					  (ORI|OR) ? 1:
					  (ADD|ADDI|ADDU|ADDIU|L|S|LUI) ? 2:
					  (SUBU|SUB) ? 3:
					  (XORI|XOR) ? 4:
					  (SLL|SLLV) ? 5:
					  (SRA|SRAV) ? 6:
					  (SRL|SRLV) ? 7:
					  (SLT|SLTI) ? 8:
					  (SLTU|SLTIU)?9:
					  (NOR)?       10:
					  1;
	
	assign MemWr = (S)? 1:0;
	
	assign MemtoReg=(L)? 1: (JAL|JALR)? 2: (MF)?4:(MFC0)?5: 0 ;
	
	assign RegWr=(RegDst != 100)? 1:0;
	
	assign NPCOp= (JR|JALR)? 4:
					  (JAL||J)? 3:
					  (br)? 2:
					  0;
					  
	assign read_type=(LW)? 0 : (LH)? 1: (LHU) ? 2: (LB)?3: (LBU)?4 :0;
	assign write_type=(SW)? 0: (SH) ? 1: (SB)? 2: 0;
	
	assign MDOp = (DIVU) ? 3:
					  (DIV) ? 2:
					  (MULTU)? 1:
					  (MULT) ? 0: 0;
					  
	assign start=mult_div;
	
endmodule
