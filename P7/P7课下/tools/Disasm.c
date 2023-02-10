#include <vector>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
using namespace std;
#define DEBUGMOOD 371

typedef struct mipsInstr
{
	unsigned char rs,rt,rd;
	unsigned char opCode,funCode;
	unsigned int imm5,imm16,imm26;
} instr;

typedef struct mipsTagElement
{
	int tagNum;
	unsigned char tagType;
} tagElement;

typedef struct mipsDisasm
{
	char s[105];
	bool hasTag;
	vector<tagElement> tag;
	//tagType==0 -> j
	//tagType==1 -> jal
	//tagType==2 -> beq
	//tagType==3 -> bne
	//tagType==4 -> bgtz
	//tagType==5 -> bgez
	//tagType==6 -> blez
	//tagType==7 -> bltz
	//tagType==8 -> bgezal
	//tagType==9 -> bltzal
	//tagType==10 -> err
} disasm;

disasm code[2500]; int hasKtext=-1;
int totCode,totj,totjal,totbeq,totbne,toterr;
int totbgtz,totbgez,totblez,totbltz,totbgezal,totbltzal;

inline int sign(int num)
{
	if (num&(1<<15)) num|=0xffff0000;
	return num;
}

inline instr analyse(int num)
{
	instr out;
	out.opCode=(num>>26)&0x3f;
	out.rs=(num>>21)&0x1f;
	out.rt=(num>>16)&0x1f;
	out.rd=(num>>11)&0x1f;
	out.imm5=(num>>6)&0x1f;
	out.funCode=num&0x3f;
	out.imm16=num&0xffff;
	out.imm26=num&0x3ffffff;
	return out;
}

inline bool judge(int num)
{
	if (num<0) return true;
	if (num>1023) return true;
	return false;
}

inline void printtag(int ptag,int pnum)
{
	if (ptag==0) printf("J_TAG%d:\n",pnum);
	else if (ptag==1) printf("JAL_TAG%d:\n",pnum);
	else if (ptag==2) printf("BEQ_TAG%d:\n",pnum);
	else if (ptag==3) printf("BNE_TAG%d:\n",pnum);
	else if (ptag==4) printf("BGTZ_TAG%d:\n",pnum);
	else if (ptag==5) printf("BGEZ_TAG%d:\n",pnum);
	else if (ptag==6) printf("BLEZ_TAG%d:\n",pnum);
	else if (ptag==7) printf("BLTZ_TAG%d:\n",pnum);
	else if (ptag==8) printf("BGEZAL_TAG%d:\n",pnum);
	else if (ptag==9) printf("BLTZAL_TAG%d:\n",pnum);
	else if (ptag==10) printf("ERR_TAG%d:\n",pnum);
	return;
}

inline bool Itype(instr command)
{
	bool out=true;
	if (command.opCode==8) sprintf(code[totCode++].s,"addi\t$%d,$%d,%d",command.rt,command.rs,sign(command.imm16));
	else if (command.opCode==9) sprintf(code[totCode++].s,"addiu\t$%d,$%d,%d",command.rt,command.rs,sign(command.imm16));
	else if (command.opCode==12) sprintf(code[totCode++].s,"andi\t$%d,$%d,%d",command.rt,command.rs,command.imm16);
	else if (command.opCode==4)
	{
		if (judge(sign(command.imm16)+totCode+1-(~hasKtext?hasKtext:0)))
		{
			code[totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=10; toPush.tagNum=toterr;
			code[totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"beq\t\t$%d,$%d,ERR_TAG%d ### wrong imm 0x%04x has been changed",command.rs,command.rt,toterr++,command.imm16);
		}
		else
		{
			code[sign(command.imm16)+totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=2; toPush.tagNum=totbeq;
			code[sign(command.imm16)+totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"beq\t\t$%d,$%d,BEQ_TAG%d",command.rs,command.rt,totbeq++);
		}
	}
	else if (command.opCode==7)
	{
		if (judge(sign(command.imm16)+totCode+1-(~hasKtext?hasKtext:0)))
		{
			code[totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=10; toPush.tagNum=toterr;
			code[totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"bgtz\t$%d,ERR_TAG%d ### wrong imm 0x%04x has been changed",command.rs,toterr++,command.imm16);
		}
		else
		{
			code[sign(command.imm16)+totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=4; toPush.tagNum=totbgtz;
			code[sign(command.imm16)+totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"bgtz\t$%d,BGTZ_TAG%d",command.rs,totbgtz++);
		}
	}
	else if (command.opCode==6)
	{
		if (judge(sign(command.imm16)+totCode+1-(~hasKtext?hasKtext:0)))
		{
			code[totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=10; toPush.tagNum=toterr;
			code[totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"blez\t$%d,ERR_TAG%d ### wrong imm 0x%04x has been changed",command.rs,toterr++,command.imm16);
		}
		else
		{
			code[sign(command.imm16)+totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=6; toPush.tagNum=totblez;
			code[sign(command.imm16)+totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"blez\t$%d,BLEZ_TAG%d",command.rs,totblez++);
		}
	}
	else if (command.opCode==5)
	{
		if (judge(sign(command.imm16)+totCode+1-(~hasKtext?hasKtext:0)))
		{
			code[totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=10; toPush.tagNum=toterr;
			code[totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"bne\t\t$%d,$%d,ERR_TAG%d ### wrong imm 0x%04x has been changed",command.rs,command.rt,toterr++,command.imm16);
		}
		else
		{
			code[sign(command.imm16)+totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=3; toPush.tagNum=totbne;
			code[sign(command.imm16)+totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"bne\t\t$%d,$%d,BNE_TAG%d",command.rs,command.rt,totbne++);
		}
	}
	else if (command.opCode==2)
	{
		if (judge(command.imm26-((~hasKtext?0x4180:0x3000)>>2)))
		{
			code[totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=10; toPush.tagNum=toterr;
			code[totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"j\t\tERR_TAG%d ### wrong imm 0x%07x has been changed",toterr++,command.imm26);
		}
		else
		{
			code[command.imm26-(~hasKtext?(0x1060-hasKtext):0xc00)].hasTag=true;
			tagElement toPush; toPush.tagType=0; toPush.tagNum=totj;
			code[command.imm26-(~hasKtext?(0x1060-hasKtext):0xc00)].tag.push_back(toPush);
			sprintf(code[totCode++].s,"j\t\tJ_TAG%d",totj++);
		}
	}
	else if (command.opCode==3)
	{
		if (judge(command.imm26-((~hasKtext?0x4180:0x3000)>>2)))
		{
			code[totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=10; toPush.tagNum=toterr;
			code[totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"jal\t\tERR_TAG%d ### wrong imm 0x%07x has been changed",toterr++,command.imm26);
		}
		else
		{
			code[command.imm26-(~hasKtext?(0x1060-hasKtext):0xc00)].hasTag=true;
			tagElement toPush; toPush.tagType=1; toPush.tagNum=totjal;
			code[command.imm26-(~hasKtext?(0x1060-hasKtext):0xc00)].tag.push_back(toPush);
			sprintf(code[totCode++].s,"jal\t\tJAL_TAG%d",totjal++);
		}
	}
	else if (command.opCode==32) sprintf(code[totCode++].s,"lb\t\t$%d,%d($%d)",command.rt,sign(command.imm16),command.rs);
	else if (command.opCode==36) sprintf(code[totCode++].s,"lbu\t\t$%d,%d($%d)",command.rt,sign(command.imm16),command.rs);
	else if (command.opCode==33) sprintf(code[totCode++].s,"lh\t\t$%d,%d($%d)",command.rt,sign(command.imm16),command.rs);
	else if (command.opCode==37) sprintf(code[totCode++].s,"lhu\t\t$%d,%d($%d)",command.rt,sign(command.imm16),command.rs);
	else if (command.opCode==15) sprintf(code[totCode++].s,"lui\t\t$%d,%d",command.rt,command.imm16);
	else if (command.opCode==35) sprintf(code[totCode++].s,"lw\t\t$%d,%d($%d)",command.rt,sign(command.imm16),command.rs);
	else if (command.opCode==13) sprintf(code[totCode++].s,"ori\t\t$%d,$%d,%d",command.rt,command.rs,command.imm16);
	else if (command.opCode==40) sprintf(code[totCode++].s,"sb\t\t$%d,%d($%d)",command.rt,sign(command.imm16),command.rs);
	else if (command.opCode==41) sprintf(code[totCode++].s,"sh\t\t$%d,%d($%d)",command.rt,sign(command.imm16),command.rs);
	else if (command.opCode==10) sprintf(code[totCode++].s,"slti\t$%d,$%d,%d",command.rt,command.rs,sign(command.imm16));
	else if (command.opCode==11) sprintf(code[totCode++].s,"sltiu\t$%d,$%d,%d",command.rt,command.rs,sign(command.imm16));
	else if (command.opCode==43) sprintf(code[totCode++].s,"sw\t\t$%d,%d($%d)",command.rt,sign(command.imm16),command.rs);
	else if (command.opCode==14) sprintf(code[totCode++].s,"xori\t$%d,$%d,%d",command.rt,command.rs,command.imm16);
	else out=false; return out;
}

inline bool Rtype(instr command)
{
	bool out=true;
	if (command.imm26==0) sprintf(code[totCode++].s,"nop");
	else if (command.funCode==32) sprintf(code[totCode++].s,"add\t\t$%d,$%d,$%d",command.rd,command.rs,command.rt);
	else if (command.funCode==33) sprintf(code[totCode++].s,"addu\t$%d,$%d,$%d",command.rd,command.rs,command.rt);
	else if (command.funCode==36) sprintf(code[totCode++].s,"and\t\t$%d,$%d,$%d",command.rd,command.rs,command.rt);
	else if (command.funCode==26) sprintf(code[totCode++].s,"div\t\t$%d,$%d",command.rs,command.rt);
	else if (command.funCode==27) sprintf(code[totCode++].s,"divu\t$%d,$%d",command.rs,command.rt);
	else if (command.funCode==9) sprintf(code[totCode++].s,"jalr\t$%d,$%d",command.rd,command.rs);
	else if (command.funCode==8) sprintf(code[totCode++].s,"jr\t\t$%d",command.rs);
	else if (command.funCode==16) sprintf(code[totCode++].s,"mfhi\t$%d",command.rd);
	else if (command.funCode==18) sprintf(code[totCode++].s,"mflo\t$%d",command.rd);
	else if (command.funCode==17) sprintf(code[totCode++].s,"mthi\t$%d",command.rs);
	else if (command.funCode==19) sprintf(code[totCode++].s,"mtlo\t$%d",command.rs);
	else if (command.funCode==24) sprintf(code[totCode++].s,"mult\t$%d,$%d",command.rs,command.rt);
	else if (command.funCode==25) sprintf(code[totCode++].s,"multu\t$%d,$%d",command.rs,command.rt);
	else if (command.funCode==39) sprintf(code[totCode++].s,"nor\t\t$%d,$%d,$%d",command.rd,command.rs,command.rt);
	else if (command.funCode==37) sprintf(code[totCode++].s,"or\t\t$%d,$%d,$%d",command.rd,command.rs,command.rt);
	else if (command.funCode==0) sprintf(code[totCode++].s,"sll\t\t$%d,$%d,%d",command.rd,command.rt,command.imm5);
	else if (command.funCode==4) sprintf(code[totCode++].s,"sllv\t$%d,$%d,$%d",command.rd,command.rt,command.rs);
	else if (command.funCode==42) sprintf(code[totCode++].s,"slt\t\t$%d,$%d,$%d",command.rd,command.rs,command.rt);
	else if (command.funCode==43) sprintf(code[totCode++].s,"sltu\t$%d,$%d,$%d",command.rd,command.rs,command.rt);
	else if (command.funCode==3) sprintf(code[totCode++].s,"sra\t\t$%d,$%d,%d",command.rd,command.rt,command.imm5);
	else if (command.funCode==7) sprintf(code[totCode++].s,"srav\t$%d,$%d,$%d",command.rd,command.rt,command.rs);
	else if (command.funCode==2) sprintf(code[totCode++].s,"srl\t\t$%d,$%d,%d",command.rd,command.rt,command.imm5);
	else if (command.funCode==6) sprintf(code[totCode++].s,"srlv\t$%d,$%d,$%d",command.rd,command.rt,command.rs);
	else if (command.funCode==34) sprintf(code[totCode++].s,"sub\t\t$%d,$%d,$%d",command.rd,command.rs,command.rt);
	else if (command.funCode==35) sprintf(code[totCode++].s,"subu\t$%d,$%d,$%d",command.rd,command.rs,command.rt);
	else if (command.funCode==38) sprintf(code[totCode++].s,"xor\t\t$%d,$%d,$%d",command.rd,command.rs,command.rt);
	else if (command.funCode==11) sprintf(code[totCode++].s,"movn\t\t$%d,$%d,$%d",command.rd,command.rs,command.rt);
	else if (command.funCode==10) sprintf(code[totCode++].s,"movz\t\t$%d,$%d,$%d",command.rd,command.rs,command.rt);
	else out=false; return out;
}

inline bool Btype(instr command)
{
	bool out=true;
	if (command.rt==1)
	{
		if (judge(sign(command.imm16)+totCode+1-(~hasKtext?hasKtext:0)))
		{
			code[totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=10; toPush.tagNum=toterr;
			code[totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"bgez\t$%d,ERR_TAG%d ### wrong imm 0x%04x has been changed",command.rs,toterr++,command.imm16);
		}
		else
		{
			code[sign(command.imm16)+totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=5; toPush.tagNum=totbgez;
			code[sign(command.imm16)+totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"bgez\t$%d,BGEZ_TAG%d",command.rs,totbgez++);
		}
	}
	else if (command.rt==0)
	{
		if (judge(sign(command.imm16)+totCode+1-(~hasKtext?hasKtext:0)))
		{
			code[totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=10; toPush.tagNum=toterr;
			code[totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"bltz\t$%d,ERR_TAG%d ### wrong imm 0x%04x has been changed",command.rs,toterr++,command.imm16);
		}
		else
		{
			code[sign(command.imm16)+totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=7; toPush.tagNum=totbltz;
			code[sign(command.imm16)+totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"bltz\t$%d,BLTZ_TAG%d",command.rs,totbltz++);
		}
	}
	else if (command.rt==33)
	{
		if (judge(sign(command.imm16)+totCode+1-(~hasKtext?hasKtext:0)))
		{
			code[totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=10; toPush.tagNum=toterr;
			code[totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"bgezal\t$%d,ERR_TAG%d ### wrong imm 0x%04x has been changed",command.rs,toterr++,command.imm16);
		}
		else
		{
			code[sign(command.imm16)+totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=8; toPush.tagNum=totbgezal;
			code[sign(command.imm16)+totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"bgezal\t$%d,BGEZAL_TAG%d",command.rs,totbgezal++);
		}
	}
	else if (command.rt==32)
	{
		if (judge(sign(command.imm16)+totCode+1-(~hasKtext?hasKtext:0)))
		{
			code[totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=10; toPush.tagNum=toterr;
			code[totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"bltzal\t$%d,$%d,ERR_TAG%d ### wrong imm 0x%04x has been changed",command.rs,command.rt,toterr++,command.imm16);
		}
		else
		{
			code[sign(command.imm16)+totCode+1].hasTag=true;
			tagElement toPush; toPush.tagType=9; toPush.tagNum=totbltzal;
			code[sign(command.imm16)+totCode+1].tag.push_back(toPush);
			sprintf(code[totCode++].s,"bltzal\t$%d,$%d,BLTZAL_TAG%d",command.rs,command.rt,totbltzal++);
		}
	}
	else out=false; return out;
}

inline bool CP0type(instr command)
{
	bool out=true;
	if (command.funCode==24) sprintf(code[totCode++].s,"eret");
	else if (command.rs==0) sprintf(code[totCode++].s,"mfc0\t$%d,$%d",command.rt,command.rd);
	else if (command.rs==4) sprintf(code[totCode++].s,"mtc0\t$%d,$%d",command.rt,command.rd);
	else out=false; return out;
}

inline bool MDtype(instr command)
{
	bool out=true;
	if (command.funCode==0) sprintf(code[totCode++].s,"madd\t$%d,$%d",command.rs,command.rt);
	else if (command.funCode==1) sprintf(code[totCode++].s,"maddu\t$%d,$%d",command.rs,command.rt);
	else if (command.funCode==4) sprintf(code[totCode++].s,"msub\t$%d,$%d",command.rs,command.rt);
	else if (command.funCode==5) sprintf(code[totCode++].s,"msubu\t$%d,$%d",command.rs,command.rt);
	else if (command.funCode==33) sprintf(code[totCode++].s,"clo\t$%d,$%d",command.rd,command.rs);
	else if (command.funCode==32) sprintf(code[totCode++].s,"clz\t$%d,$%d",command.rd,command.rs);
	else out=false; return out;
}

inline void unknown(int num)
{
	sprintf(code[totCode++].s,"nop ### unknown instruction 0x%08x has been changed",num);
	return;
}

inline void solve(instr command,int num)
{
	bool isRight;
	if (command.opCode==0) isRight=Rtype(command);
	else if (command.opCode==1) isRight=Btype(command);
	else if (command.opCode==16) isRight=CP0type(command);
	else if (command.opCode==28) isRight=MDtype(command);
	else isRight=Itype(command);
	if (!isRight) unknown(num);
	return;
}

inline void print()
{
	if (hasKtext!=-1) puts(".text");
	for (int i=0;i<totCode;i++)
	{
		if (code[i].hasTag)
		{
			for (int j=0;j<(int)code[i].tag.size();j++)
			printtag(code[i].tag[j].tagType,code[i].tag[j].tagNum);
		}
		if (i==hasKtext)
		{
			if (i) puts("");
			puts(".ktext 0x4180");
		}
		if (i+1-totCode) puts(code[i].s);
		else printf("%s",code[i].s);
	}
	return;
}

inline void work()
{
	int hexNumber;
	memset(code,0,sizeof(code));
	totbgtz=totbgez=totblez=totbltz=totbgezal=totbltzal=0;
	hasKtext=-1; totCode=totj=totjal=totbeq=totbne=toterr=0;
	FILE *in=fopen("code.txt","r");
	if (in==NULL) return;
	while (~fscanf(in,"%x",&hexNumber))
	{
		instr nowInstr=analyse(hexNumber);
		solve(nowInstr,hexNumber);
	}
	fclose(in);
	in=fopen("code_handler.txt","r");
	if (in!=NULL)
	{
		hasKtext=totCode;
		while (~fscanf(in,"%x",&hexNumber))
		{
			instr nowInstr=analyse(hexNumber);
			solve(nowInstr,hexNumber);
		}
		fclose(in);
	}
	freopen("main.asm","w",stdout);
	print(); return;
}

inline void debug()
{
	char* buffer1=(char*)malloc(1000);
	char* buffer2=(char*)malloc(1000);
	for (int i=0;i<DEBUGMOOD;i++)
	{
		sprintf(buffer1,"java -jar mars.jar a nc mc CompactDataAtZero dump .text HexText code.txt testpoint%d.asm",i+1);
		sprintf(buffer2,"java -jar mars.jar a nc mc CompactDataAtZero dump 0x00004180-0x00005180 HexText code_handler.txt testpoint%d.asm",i+1);
		system(buffer1); system(buffer2); work(); freopen("log.txt","w",stdout);
		sprintf(buffer1,"java -jar mars.jar a nc mc CompactDataAtZero dump .text HexText out_code_%d.txt main.asm",i+1);
		sprintf(buffer2,"java -jar mars.jar a nc mc CompactDataAtZero dump 0x00004180-0x00005180 HexText out_code_handler_%d.txt main.asm",i+1);
		system(buffer1); system(buffer2);
		sprintf(buffer1,"fc code.txt out_code_%d.txt",i+1);
		sprintf(buffer2,"fc code_handler.txt out_code_handler_%d.txt",i+1);
		system(buffer1); system(buffer2);
	}
	free(buffer1),free(buffer2); return;
}

int main()
{
	if (DEBUGMOOD) debug();
	else work(); return 0;
}