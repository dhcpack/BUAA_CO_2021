#pragma GCC optimize(2)
#pragma GCC optimize(3,"Ofast","inline")

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define CHECKMIPS 0
#define DEBUGMOOD 0
#define FILETOTNUM 290

typedef struct
{
	int blockType;
	int regUse[2];
	int instrType[4];
	int instr[4][4];
} instrBlock;

instrBlock block[50005];
int blockNum,printed[50005];

FILE *out,*fpr;
int nameChange[FILETOTNUM];

int bufferType[30]; char printBuffer[30][105];
int fprtot=1,tagtot,buffertot,lanum,laper,trynum,nownum,uset,stack[10];
const int getInstrNum=10,useInstrNum=12,topNum=0x3e00,tryMaxTime=10,jumptonew=880,totjump=7;

const int get[10]={0,1,2,3,5,6,11,13,14,15};
const int use[12]={0,1,2,3,4,5,7,8,9,10,12,14};
const bool lsInstr[16]={0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0};
const bool jumpInstr[16]={0,0,0,0,0,0,0,1,1,1,1,0,1,1,1,0};

int dmForNormal[50],dmForJump[50];
int regSingleVis[32],regDoubleVis[32][32];
char jumpSpace[4005],initGrf[1005];
char dmBufferNormal[4005],dmBufferJump[4005],beforeJump[1005];

inline int max(int a,int b) {return a>b?a:b;}
inline int min(int a,int b) {return a<b?a:b;}
inline void swap(int *x,int *y) {int tmp=*x; *x=*y; *y=tmp; return;}

inline void getChange()
{
	for (int i=0;i<FILETOTNUM;i++) nameChange[i]=i+1; if (DEBUGMOOD) return;
	for (int i=0;i<FILETOTNUM;i++) swap(&nameChange[i],&nameChange[rand()%FILETOTNUM]);
	for (int i=0;i<FILETOTNUM;i++) swap(&nameChange[i],&nameChange[rand()%FILETOTNUM]);
	return;
}

inline bool addOverFlow(int x,int y,int tag)
{
	int ans=x+y;
	if (ans>0 && x<0 && y<0)
	{
		if (DEBUGMOOD) fprintf(out,"file%d type %d %x+%x->%x overflow\n"
		,fprtot,tag,x,y,x+y); return true;
	}
	if (ans<0 && x>0 && y>0)
	{
		if (DEBUGMOOD) fprintf(out,"file%d type %d %x+%x->%x overflow\n"
		,fprtot,tag,x,y,x+y); return true;
	}
	return false;
}

struct mips_hardWare
{
	int hi,lo,pc;
	int tmphi,tmplo,tmppc;
	int grf[32],dm[4096];
	int tmpgrf[32],tmpdm[4096];
	//-------------------------
	inline void update()
	{
		hi=tmphi,lo=tmplo,pc=tmppc;
		for (int i=0;i<32;i++) grf[i]=tmpgrf[i];
		for (int i=0;i<4096;i++) dm[i]=tmpdm[i];
		return;
	}
	inline void back()
	{
		tmphi=hi,tmplo=lo,tmppc=pc;
		for (int i=0;i<32;i++) tmpgrf[i]=grf[i];
		for (int i=0;i<4096;i++) tmpdm[i]=dm[i];
		return;
	}
	//-------------------------
	inline void reset(int type)
	{
		hi=lo=0; pc=12288;
		memset(dm,0,sizeof(dm));
		if (type==1)
		{
			for (int i=0;i<50;i++)
			dm[i]=dmForNormal[i]; pc+=400;
		}
		else if (type==2) pc+=(302)<<4;
		else if (type==3)
		{
			for (int i=0;i<50;i++)
			dm[i]=dmForJump[i]; pc+=400;
			pc+=(302)<<4;
		}
		for (int i=1;i<32;i++) grf[i]=252;
		grf[0]=0,pc+=(32)<<2;
		back(); return;
	}
} hardWare;

struct mips_rTypeSet//id=0
{
	const int totNum=13; bool toRand=0;
	unsigned char vis[13]; int use[13]={0};
	const char instruction[13][15]=
	{
		"add",
		"addu",
		"and",
		"nor",
		"or",
		"sllv",
		"srlv",
		"srav",
		"slt",
		"sltu",
		"sub",
		"subu",
		"xor"
	};
	//-------------------------
	inline void doit(int num,int dst,int srcA,int srcB)
	{
		if (num==0) hardWare.tmpgrf[dst]=hardWare.tmpgrf[srcA]+hardWare.tmpgrf[srcB];
		else if (num==1) hardWare.tmpgrf[dst]=hardWare.tmpgrf[srcA]+hardWare.tmpgrf[srcB];
		else if (num==2) hardWare.tmpgrf[dst]=hardWare.tmpgrf[srcA]&hardWare.tmpgrf[srcB];
		else if (num==3) hardWare.tmpgrf[dst]=~(hardWare.tmpgrf[srcA]|hardWare.tmpgrf[srcB]);
		else if (num==4) hardWare.tmpgrf[dst]=hardWare.tmpgrf[srcA]|hardWare.tmpgrf[srcB];
		else if (num==5) hardWare.tmpgrf[dst]=hardWare.tmpgrf[srcA]<<(hardWare.tmpgrf[srcB]&31);
		else if (num==6) hardWare.tmpgrf[dst]=(unsigned int)hardWare.tmpgrf[srcA]>>((unsigned int)(hardWare.tmpgrf[srcB]&31));
		else if (num==7) hardWare.tmpgrf[dst]=hardWare.tmpgrf[srcA]>>(hardWare.tmpgrf[srcB]&31);
		else if (num==8) hardWare.tmpgrf[dst]=hardWare.tmpgrf[srcA]<hardWare.tmpgrf[srcB];
		else if (num==9) hardWare.tmpgrf[dst]=(unsigned int)hardWare.tmpgrf[srcA]<(unsigned int)hardWare.tmpgrf[srcB];
		else if (num==10) hardWare.tmpgrf[dst]=hardWare.tmpgrf[srcA]-hardWare.tmpgrf[srcB];
		else if (num==11) hardWare.tmpgrf[dst]=hardWare.tmpgrf[srcA]-hardWare.tmpgrf[srcB];
		else if (num==12) hardWare.tmpgrf[dst]=hardWare.tmpgrf[srcA]^hardWare.tmpgrf[srcB];
		hardWare.tmpgrf[0]=0; return;
	}
	//-------------------------
	inline void debug()
	{
		int n,a,b;
		while (scanf("%d %d %d",&n,&a,&b))
		{
			if (n==-1) return;
			hardWare.tmpgrf[1]=a;
			hardWare.tmpgrf[2]=b;
			doit(n,3,1,2);
			printf("%d\n",hardWare.tmpgrf[3]);
		}
		return;
	}
	//-------------------------
	inline bool trydo(int a[])
	{
		if (a[0]==0 && addOverFlow(hardWare.tmpgrf[a[2]],hardWare.tmpgrf[a[3]],0)) a[0]++;
		else if (a[0]==10 && addOverFlow(hardWare.tmpgrf[a[2]],-hardWare.tmpgrf[a[3]],1)) a[0]++;
		doit(a[0],a[1],a[2],a[3]),hardWare.tmppc+=4; return true;
	}
	//-------------------------
	inline int select()
	{
		if (toRand) return rand()%totNum;
		int ans=100005,pos=-1;
		for (int i=0;i<totNum;i++)
		if (!vis[i] && use[i]<ans) ans=use[i],pos=i;
		if (pos==-1) return rand()%totNum;
		vis[pos]++; return pos;
	}
	//-------------------------
	inline void printuse()
	{
		for (int i=0;i<totNum;i++)
		fprintf(out,"%s %d\n",instruction[i],use[i]);
		return;
	}
	//-------------------------
	inline void clrVis()
	{
		for (int i=0;i<totNum;i++) use[i]-=vis[i];
		memset(vis,0,sizeof(vis)); toRand=1; return;
	}
	//-------------------------
	inline void print(int a[])
	{
		use[a[0]]++; toRand=0; memset(vis,0,sizeof(vis));
		sprintf(printBuffer[buffertot++],"%s%s$%d,$%d,$%d\n",
		instruction[a[0]],strlen(instruction[a[0]])>3?"\t":"\t\t",a[1],a[2],a[3]);
	}
} rTypeSet;

struct mips_i1TypeSet//id=1
{
	const int totNum=7; bool toRand=0;
	unsigned char vis[7]; int use[7]={0};
	const char instruction[7][15]=
	{
		"addi",
		"addiu",
		"andi",
		"ori",
		"slti",
		"sltiu",
		"xori"
	};
	//-------------------------
	inline void doit(int num,int dst,int src,int imm)
	{
		if (num==0) hardWare.tmpgrf[dst]=hardWare.tmpgrf[src]+imm;
		else if (num==1) hardWare.tmpgrf[dst]=hardWare.tmpgrf[src]+imm;
		else if (num==2) hardWare.tmpgrf[dst]=hardWare.tmpgrf[src]&imm;
		else if (num==3) hardWare.tmpgrf[dst]=hardWare.tmpgrf[src]|imm;
		else if (num==4) hardWare.tmpgrf[dst]=hardWare.tmpgrf[src]<imm;
		else if (num==5) hardWare.tmpgrf[dst]=(unsigned int)hardWare.tmpgrf[src]<(unsigned int)imm;
		else if (num==6) hardWare.tmpgrf[dst]=hardWare.tmpgrf[src]^imm;
		hardWare.tmpgrf[0]=0; return;
	}
	//-------------------------
	inline void debug()
	{
		int n,a,b;
		while (scanf("%d %d %d",&n,&a,&b))
		{
			if (n==-1) return;
			hardWare.tmpgrf[1]=a;
			doit(n,3,1,b);
			printf("%d\n",hardWare.tmpgrf[3]);
		}
		return;
	}
	//-------------------------
	inline bool trydo(int a[])
	{
		if (a[0]==0) a[3]=(rand()&1)?(rand()&255):-(rand()&255);
		else if (a[0]==1) a[3]=(rand()&1)?(rand()&255):-(rand()&255);
		else if (a[0]==2) a[3]=rand()&255;
		else if (a[0]==3) a[3]=rand()&255;
		else if (a[0]==4) a[3]=(rand()&1)?(rand()&7):-(rand()&7);
		else if (a[0]==5) a[3]=(rand()&1)?(rand()&7):-(rand()&7);
		else if (a[0]==6) a[3]=rand()&255;
		if (a[0]==0 && addOverFlow(hardWare.tmpgrf[a[2]],a[3],2)) a[0]++;
		doit(a[0],a[1],a[2],a[3]),hardWare.tmppc+=4; return true;
	}
	//-------------------------
	inline int select()
	{
		if (toRand) return rand()%totNum;
		int ans=100005,pos=-1;
		for (int i=0;i<totNum;i++)
		if (!vis[i] && use[i]<ans) ans=use[i],pos=i;
		if (pos==-1) return rand()%totNum;
		vis[pos]++; return pos;
	}
	//-------------------------
	inline void printuse()
	{
		for (int i=0;i<totNum;i++)
		fprintf(out,"%s %d\n",instruction[i],use[i]);
		return;
	}
	//-------------------------
	inline void clrVis()
	{
		for (int i=0;i<totNum;i++) use[i]-=vis[i];
		memset(vis,0,sizeof(vis)); toRand=1; return;
	}
	//-------------------------
	inline void print(int a[])
	{
		use[a[0]]++; toRand=0; memset(vis,0,sizeof(vis));
		sprintf(printBuffer[buffertot++],"%s%s$%d,$%d,%d\n",
		instruction[a[0]],strlen(instruction[a[0]])>3?"\t":"\t\t",a[1],a[2],a[3]);
	}
} i1TypeSet;

struct mips_i2TypeSet//id=2
{
	const int totNum=3; bool toRand=0;
	unsigned char vis[3]; int use[3]={0};
	const char instruction[3][15]=
	{
		"sll",
		"srl",
		"sra"
	};
	//-------------------------
	inline void doit(int num,int dst,int src,int imm)
	{
		if (num==0) hardWare.tmpgrf[dst]=hardWare.tmpgrf[src]<<imm;
		else if (num==1) hardWare.tmpgrf[dst]=(unsigned int)hardWare.tmpgrf[src]>>((unsigned int)imm);
		else if (num==2) hardWare.tmpgrf[dst]=hardWare.tmpgrf[src]>>imm;
		hardWare.tmpgrf[0]=0; return;
	}
	//-------------------------
	inline void debug()
	{
		int n,a,b;
		while (scanf("%d %d %d",&n,&a,&b))
		{
			if (n==-1) return;
			hardWare.tmpgrf[1]=a;
			doit(n,3,1,b);
			printf("%d\n",hardWare.tmpgrf[3]);
		}
		return;
	}
	//-------------------------
	inline bool trydo(int a[])
	{
		a[3]=(rand()&1)+1;
		doit(a[0],a[1],a[2],a[3]);
		hardWare.tmppc+=4;
		return true;
	}
	//-------------------------
	inline int select()
	{
		if (toRand) return rand()%totNum;
		int ans=100005,pos=-1;
		for (int i=0;i<totNum;i++)
		if (!vis[i] && use[i]<ans) ans=use[i],pos=i;
		if (pos==-1) return rand()%totNum;
		vis[pos]++; return pos;
	}
	//-------------------------
	inline void printuse()
	{
		for (int i=0;i<totNum;i++)
		fprintf(out,"%s %d\n",instruction[i],use[i]);
		return;
	}
	//-------------------------
	inline void clrVis()
	{
		for (int i=0;i<totNum;i++) use[i]-=vis[i];
		memset(vis,0,sizeof(vis)); toRand=1; return;
	}
	//-------------------------
	inline void print(int a[])
	{
		use[a[0]]++; toRand=0; memset(vis,0,sizeof(vis));
		sprintf(printBuffer[buffertot++],"%s%s$%d,$%d,%d\n",
		instruction[a[0]],strlen(instruction[a[0]])>3?"\t":"\t\t",a[1],a[2],a[3]);
	}
} i2TypeSet;

struct mips_lTypeSet//id=3
{
	const int totNum=5; bool toRand=0;
	unsigned char vis[5]; int use[5]={0};
	const char instruction[5][15]=
	{
		"lb",
		"lbu",
		"lh",
		"lhu",
		"lw"
	};
	//-------------------------
	inline void doit(int num,int dst,int base,int offset)
	{
		int addr=(hardWare.tmpgrf[base]+offset)&16383;
		if (num==0)
		{
			int tmp=hardWare.tmpdm[addr>>2];
			if ((addr&3)==0) tmp=(tmp&0x000000ff)<<24;
			else if ((addr&3)==1) tmp=(tmp&0x0000ff00)<<16;
			else if ((addr&3)==2) tmp=(tmp&0x00ff0000)<<8;
			else if ((addr&3)==3) tmp=tmp&0xff000000;
			hardWare.tmpgrf[dst]=tmp>>24;
		}
		else if (num==1)
		{
			int tmp=hardWare.tmpdm[addr>>2];
			if ((addr&3)==0) tmp=(tmp&0x000000ff)<<24;
			else if ((addr&3)==1) tmp=(tmp&0x0000ff00)<<16;
			else if ((addr&3)==2) tmp=(tmp&0x00ff0000)<<8;
			else if ((addr&3)==3) tmp=tmp&0xff000000;
			hardWare.tmpgrf[dst]=(unsigned int)tmp>>24;
		}
		else if (num==2)
		{
			int tmp=hardWare.tmpdm[addr>>2];
			if ((addr&3)==0) tmp=(tmp&0x0000ffff)<<16;
			else if ((addr&3)==2) tmp=tmp&0xffff0000;
			hardWare.tmpgrf[dst]=tmp>>16;
		}
		else if (num==3)
		{
			int tmp=hardWare.tmpdm[addr>>2];
			if ((addr&3)==0) tmp=(tmp&0x0000ffff)<<16;
			else if ((addr&3)==2) tmp=tmp&0xffff0000;
			hardWare.tmpgrf[dst]=(unsigned int)tmp>>16;
		}
		else if (num==4) hardWare.tmpgrf[dst]=hardWare.tmpdm[addr>>2];
		hardWare.tmpgrf[0]=0; return;
	}
	//-------------------------
	inline void debug()
	{
		int n,a,b,tr;
		while (scanf("%d %d %d %d",&n,&a,&b,&tr))
		{
			if (n==-1) return;
			hardWare.tmpdm[((a+b)&16383)>>2]=tr;
			hardWare.tmpgrf[1]=a;
			doit(n,3,1,b);
			printf("%d\n",hardWare.tmpgrf[3]);
		}
		return;
	}
	//-------------------------
	inline bool trydo(int a[])
	{
		a[3]=((rand()%40)<<2)-(hardWare.tmpgrf[a[2]]&16383);
		if ((a[3]&0xffff8000)!=0 && ((~a[3])&0xffff8000)!=0)
		{
			if (DEBUGMOOD) fprintf(out,"failed %s $%d,%d($%d)\n",
			instruction[a[0]],a[1],a[3],a[2]);
			return false;
		}
		doit(a[0],a[1],a[2],a[3]);
		hardWare.tmppc+=4;
		return true;
	}
	//-------------------------
	inline int select()
	{
		if (toRand) return rand()%totNum;
		int ans=100005,pos=-1;
		for (int i=0;i<totNum;i++)
		if (!vis[i] && use[i]<ans) ans=use[i],pos=i;
		if (pos==-1) return rand()%totNum;
		vis[pos]++; return pos;
	}
	//-------------------------
	inline void printuse()
	{
		for (int i=0;i<totNum;i++)
		fprintf(out,"%s %d\n",instruction[i],use[i]);
		return;
	}
	//-------------------------
	inline void clrVis()
	{
		for (int i=0;i<totNum;i++) use[i]-=vis[i];
		memset(vis,0,sizeof(vis)); toRand=1; return;
	}
	//-------------------------
	inline void print(int a[])
	{
		use[a[0]]++; toRand=0; memset(vis,0,sizeof(vis));
		sprintf(printBuffer[buffertot++],"%s%s$%d,%d($%d)\n",
		instruction[a[0]],strlen(instruction[a[0]])>3?"\t":"\t\t",a[1],a[3],a[2]);
	}
} lTypeSet;

struct mips_sTypeSet//id=4
{
	const int totNum=3; bool toRand=0;
	unsigned char vis[3]; int use[3]={0};
	const char instruction[3][15]=
	{
		"sb",
		"sh",
		"sw"
	};
	//-------------------------
	inline void doit(int num,int src,int base,int offset)
	{
		int addr=(hardWare.tmpgrf[base]+offset)&16383;
		if (num==0)
		{
			int tmp1=hardWare.tmpdm[addr>>2]&0x000000ff;
			int tmp2=hardWare.tmpdm[addr>>2]&0x0000ff00;
			int tmp3=hardWare.tmpdm[addr>>2]&0x00ff0000;
			int tmp4=hardWare.tmpdm[addr>>2]&0xff000000;
			if ((addr&3)==0) tmp1=(hardWare.tmpgrf[src]&255);
			else if ((addr&3)==1) tmp2=(hardWare.tmpgrf[src]&255)<<8;
			else if ((addr&3)==2) tmp3=(hardWare.tmpgrf[src]&255)<<16;
			else if ((addr&3)==3) tmp4=(hardWare.tmpgrf[src]&255)<<24;
			hardWare.tmpdm[addr>>2]=tmp1|tmp2|tmp3|tmp4;
		}
		else if (num==1)
		{
			int tmp1=hardWare.tmpdm[addr>>2]&0x0000ffff;
			int tmp2=hardWare.tmpdm[addr>>2]&0xffff0000;
			if ((addr&3)==0) tmp1=(hardWare.tmpgrf[src]&65535);
			else if ((addr&3)==2) tmp2=(hardWare.tmpgrf[src]&65535)<<16;
			hardWare.tmpdm[addr>>2]=tmp1|tmp2;
		}
		else if (num==2) hardWare.tmpdm[addr>>2]=hardWare.tmpgrf[src];
		return;
	}
	//-------------------------
	inline void debug()
	{
		int n,a,b,ts;
		while (scanf("%d %d %d %d",&n,&a,&b,&ts))
		{
			hardWare.tmpdm[((a+b)&16383)>>2]=0x11111111;
			if (n==-1) return;
			hardWare.tmpgrf[3]=ts;
			hardWare.tmpgrf[1]=a;
			doit(n,3,1,b);
			printf("%d\n",hardWare.tmpdm[(a+b)>>2]);
		}
		return;
	}
	//-------------------------
	inline bool trydo(int a[])
	{
		a[3]=((rand()%50+70)<<2)-(hardWare.tmpgrf[a[2]]&16383);
		if ((a[3]&0xffff8000)!=0 && ((~a[3])&0xffff8000)!=0)
		{
			if (DEBUGMOOD) fprintf(out,"failed %s $%d,%d($%d)\n",
			instruction[a[0]],a[1],a[3],a[2]);
			return false;
		}
		doit(a[0],a[1],a[2],a[3]);
		hardWare.tmppc+=4;
		return true;
	}
	//-------------------------
	inline int select()
	{
		if (toRand) return rand()%totNum;
		int ans=100005,pos=-1;
		for (int i=0;i<totNum;i++)
		if (!vis[i] && use[i]<ans) ans=use[i],pos=i;
		if (pos==-1) return rand()%totNum;
		vis[pos]++; return pos;
	}
	//-------------------------
	inline void printuse()
	{
		for (int i=0;i<totNum;i++)
		fprintf(out,"%s %d\n",instruction[i],use[i]);
		return;
	}
	//-------------------------
	inline void clrVis()
	{
		for (int i=0;i<totNum;i++) use[i]-=vis[i];
		memset(vis,0,sizeof(vis)); toRand=1; return;
	}
	//-------------------------
	inline void print(int a[])
	{
		use[a[0]]++; toRand=0; memset(vis,0,sizeof(vis));
		sprintf(printBuffer[buffertot++],"%s%s$%d,%d($%d)\n",
		instruction[a[0]],strlen(instruction[a[0]])>3?"\t":"\t\t",a[1],a[3],a[2]);
	}
} sTypeSet;

struct mips_mtTypeSet//id=5
{
	const int totNum=6; bool toRand=0;
	unsigned char vis[6]; int use[6]={0};
	const char instruction[6][15]=
	{
		"div",
		"divu",
		"mult",
		"multu",
		"mthi",
		"mtlo"
	};
	//-------------------------
	inline void doit(int num,int srcA,int srcB)
	{
		if (num==0)
		{
			hardWare.tmphi=hardWare.tmpgrf[srcA]%hardWare.tmpgrf[srcB];
			hardWare.tmplo=hardWare.tmpgrf[srcA]/hardWare.tmpgrf[srcB];
		}
		else if (num==1)
		{
			hardWare.tmphi=(unsigned int)hardWare.tmpgrf[srcA]%(unsigned int)hardWare.tmpgrf[srcB];
			hardWare.tmplo=(unsigned int)hardWare.tmpgrf[srcA]/(unsigned int)hardWare.tmpgrf[srcB];
		}
		else if (num==2)
		{
			long long int a=hardWare.tmpgrf[srcA];
			long long int b=hardWare.tmpgrf[srcB]; a*=b;
			hardWare.tmphi=(a&((long long int)-1<<32))>>32;
			hardWare.tmplo=a;
		}
		else if (num==3)
		{
			unsigned long long int a=hardWare.tmpgrf[srcA]&(unsigned int)(-1);
			unsigned long long int b=hardWare.tmpgrf[srcB]&(unsigned int)(-1); a*=b;
			hardWare.tmphi=(unsigned long long int)((a&((unsigned long long int)(-1)<<32))>>32);
			hardWare.tmplo=(unsigned int)a;
		}
		else if (num==4) hardWare.tmphi=hardWare.tmpgrf[srcA];
		else if (num==5) hardWare.tmplo=hardWare.tmpgrf[srcA];
		return;
	}
	//-------------------------
	inline void debug()
	{
		int n,a,b;
		while (scanf("%d %d %d",&n,&a,&b))
		{
			if (n==-1) return;
			hardWare.tmpgrf[1]=a;
			hardWare.tmpgrf[2]=b;
			doit(n,1,2);
			printf("%08x\n",hardWare.tmphi);
			printf("%08x\n",hardWare.tmplo);
		}
		return;
	}
	//-------------------------
	inline bool trydo(int a[])
	{
		while (hardWare.tmpgrf[a[2]]==0 && (a[0]==0 || a[0]==1))
		a[2]=rand()%30+1; doit(a[0],a[1],a[2]);
		doit(a[0],a[1],a[2]);
		hardWare.tmppc+=4;
		return true;
	}
	//-------------------------
	inline int select()
	{
		if (toRand) return rand()%totNum;
		int ans=100005,pos=-1;
		for (int i=0;i<totNum;i++)
		if (!vis[i] && use[i]<ans) ans=use[i],pos=i;
		if (pos==-1) return rand()%totNum;
		vis[pos]++; return pos;
	}
	//-------------------------
	inline void printuse()
	{
		for (int i=0;i<totNum;i++)
		fprintf(out,"%s %d\n",instruction[i],use[i]);
		return;
	}
	//-------------------------
	inline void clrVis()
	{
		for (int i=0;i<totNum;i++) use[i]-=vis[i];
		memset(vis,0,sizeof(vis)); toRand=1; return;
	}
	//-------------------------
	inline void print(int a[])
	{
		use[a[0]]++; toRand=0; memset(vis,0,sizeof(vis));
		if (a[0]<4) sprintf(printBuffer[buffertot++],"%s%s$%d,$%d\n",
		instruction[a[0]],strlen(instruction[a[0]])>3?"\t":"\t\t",a[1],a[2]);
		else sprintf(printBuffer[buffertot++],"%s%s$%d\n",instruction[a[0]],
		strlen(instruction[a[0]])>3?"\t":"\t\t",a[1]);
	}
} mtTypeSet;

struct mips_mfTypeSet//id=6
{
	const int totNum=2; bool toRand=0;
	unsigned char vis[2]; int use[2]={0};
	const char instruction[2][15]=
	{
		"mfhi",
		"mflo"
	};
	//-------------------------
	inline void doit(int num,int dst)
	{
		if (num==0) hardWare.tmpgrf[dst]=hardWare.tmphi;
		else if (num==1) hardWare.tmpgrf[dst]=hardWare.tmplo;
		hardWare.tmpgrf[0]=0;
		return;
	}
	//-------------------------
	inline bool trydo(int a[])
	{
		hardWare.tmppc+=4;
		doit(a[0],a[1]);
		return true;
	}
	//-------------------------
	inline int select()
	{
		if (toRand) return rand()%totNum;
		int ans=100005,pos=-1;
		for (int i=0;i<totNum;i++)
		if (!vis[i] && use[i]<ans) ans=use[i],pos=i;
		if (pos==-1) return rand()%totNum;
		vis[pos]++; return pos;
	}
	//-------------------------
	inline void printuse()
	{
		for (int i=0;i<totNum;i++)
		fprintf(out,"%s %d\n",instruction[i],use[i]);
		return;
	}
	//-------------------------
	inline void clrVis()
	{
		for (int i=0;i<totNum;i++) use[i]-=vis[i];
		memset(vis,0,sizeof(vis)); toRand=1; return;
	}
	//-------------------------
	inline void print(int a[])
	{
		use[a[0]]++; toRand=0; memset(vis,0,sizeof(vis));
		sprintf(printBuffer[buffertot++],"%s%s$%d\n",instruction[a[0]],
		strlen(instruction[a[0]])>3?"\t":"\t\t",a[1]);
	}
} mfTypeSet;

struct mips_bdyTypeSet//id=7
{
	const int totNum=2; bool toRand=0;
	unsigned char vis[2]; int use[2]={0},branched[2]={0};
	const char instruction[2][15]=
	{
		"beq",
		"bne"
	};
	//-------------------------
	inline void doit(int num,int srcA,int srcB)
	{
		if (num==0)
		{
			int valueA=hardWare.tmpgrf[srcA];
			int valueB=hardWare.tmpgrf[srcB]; branched[0]++;
			hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcB]+1,hardWare.tmpgrf[0]=0;
			if (valueA!=valueB)
			{
				hardWare.tmpgrf[srcB]=hardWare.tmpgrf[srcA]+1;
				hardWare.tmpgrf[0]=0,branched[0]--;
			}
		}
		else if (num==1)
		{
			int valueA=hardWare.tmpgrf[srcA];
			int valueB=hardWare.tmpgrf[srcB]; branched[1]++;
			hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcB]+1,hardWare.tmpgrf[0]=0;
			if (valueA==valueB)
			{
				hardWare.tmpgrf[srcB]=hardWare.tmpgrf[srcA]+1;
				hardWare.tmpgrf[0]=0,branched[1]--;
			}
		}
		hardWare.tmpgrf[0]=0;
		return;
	}
	//-------------------------
	inline bool trydo(int a[])
	{
		if (a[0]==0) if (hardWare.tmpgrf[a[1]]!=hardWare.tmpgrf[a[2]]) a[2]=a[1];
		if (a[0]==1) if (hardWare.tmpgrf[a[1]]==hardWare.tmpgrf[a[2]])
		{
			for (int i=0;i<32;i++)
			if (hardWare.tmpgrf[a[1]]!=hardWare.tmpgrf[i])
			{a[2]=i; break;}
		}
		hardWare.tmppc+=12;
		doit(a[0],a[1],a[2]);
		return true;
	}
	//-------------------------
	inline int select()
	{
		if (toRand) return rand()%totNum;
		int ans=100005,pos=-1;
		for (int i=0;i<totNum;i++)
		if (!vis[i] && use[i]<ans) ans=use[i],pos=i;
		if (pos==-1) return rand()%totNum;
		vis[pos]++; return pos;
	}
	//-------------------------
	inline void printuse()
	{
		for (int i=0;i<totNum;i++)
		fprintf(out,"%s jump->%d/tot->%d\n",instruction[i],branched[i],use[i]);
		return;
	}
	//-------------------------
	inline void clrVis()
	{
		for (int i=0;i<totNum;i++) use[i]-=vis[i];
		memset(vis,0,sizeof(vis)); toRand=1; return;
	}
	//-------------------------
	inline void print(int a[])
	{
		use[a[0]]++; toRand=0; memset(vis,0,sizeof(vis));
		sprintf(printBuffer[buffertot++],"%s%s$%d,$%d,TAG_%d\n",
		instruction[a[0]],strlen(instruction[a[0]])>3?"\t":"\t\t",a[1],a[2],tagtot);
		sprintf(printBuffer[buffertot++],"addiu\t$%d,$%d,1\n",a[1],a[2]);
		sprintf(printBuffer[buffertot++],"addiu\t$%d,$%d,1\n",a[2],a[1]);
		sprintf(printBuffer[buffertot++],"TAG_%d:\n",tagtot++);
	}
} bdyTypeSet;

struct mips_bdnTypeSet//id=8
{
	const int totNum=2; bool toRand=0;
	unsigned char vis[2]; int use[2]={0},branched[2]={0};
	const char instruction[2][15]=
	{
		"beq",
		"bne"
	};
	//-------------------------
	inline void doit(int num,int srcA,int srcB)
	{
		if (num==0)
		{
			int valueA=hardWare.tmpgrf[srcA];
			int valueB=hardWare.tmpgrf[srcB]; branched[0]++;
			hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcB]+1,hardWare.tmpgrf[0]=0;
			if (valueA!=valueB)
			{
				hardWare.tmpgrf[srcB]=hardWare.tmpgrf[srcA]+1;
				hardWare.tmpgrf[0]=0,branched[0]--;
			}
		}
		else if (num==1)
		{
			int valueA=hardWare.tmpgrf[srcA];
			int valueB=hardWare.tmpgrf[srcB]; branched[1]++;
			hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcB]+1,hardWare.tmpgrf[0]=0;
			if (valueA==valueB)
			{
				hardWare.tmpgrf[srcB]=hardWare.tmpgrf[srcA]+1;
				hardWare.tmpgrf[0]=0,branched[1]--;
			}
		}
		hardWare.tmpgrf[0]=0;
		return;
	}
	//-------------------------
	inline bool trydo(int a[])
	{
		if (a[0]==1) if (hardWare.tmpgrf[a[1]]!=hardWare.tmpgrf[a[2]]) a[2]=a[1];
		if (a[0]==0) if (hardWare.tmpgrf[a[1]]==hardWare.tmpgrf[a[2]])
		{
			for (int i=0;i<32;i++)
			if (hardWare.tmpgrf[a[1]]!=hardWare.tmpgrf[i])
			{a[2]=i; break;}
		}
		hardWare.tmppc+=12;
		doit(a[0],a[1],a[2]);
		return true;
	}
	//-------------------------
	inline int select()
	{
		if (toRand) return rand()%totNum;
		int ans=100005,pos=-1;
		for (int i=0;i<totNum;i++)
		if (!vis[i] && use[i]<ans) ans=use[i],pos=i;
		if (pos==-1) return rand()%totNum;
		vis[pos]++; return pos;
	}
	//-------------------------
	inline void printuse()
	{
		for (int i=0;i<totNum;i++)
		fprintf(out,"%s jump->%d/tot->%d\n",instruction[i],branched[i],use[i]);
		return;
	}
	//-------------------------
	inline void clrVis()
	{
		for (int i=0;i<totNum;i++) use[i]-=vis[i];
		memset(vis,0,sizeof(vis)); toRand=1; return;
	}
	//-------------------------
	inline void print(int a[])
	{
		use[a[0]]++; toRand=0; memset(vis,0,sizeof(vis));
		sprintf(printBuffer[buffertot++],"%s%s$%d,$%d,TAG_%d\n",
		instruction[a[0]],strlen(instruction[a[0]])>3?"\t":"\t\t",a[1],a[2],tagtot);
		sprintf(printBuffer[buffertot++],"addiu\t$%d,$%d,1\n",a[1],a[2]);
		sprintf(printBuffer[buffertot++],"addiu\t$%d,$%d,1\n",a[2],a[1]);
		sprintf(printBuffer[buffertot++],"TAG_%d:\n",tagtot++);
	}
} bdnTypeSet;

struct mips_bsyTypeSet//id=9
{
	const int totNum=4; bool toRand=0;
	unsigned char vis[4]; int use[4]={0},branched[4]={0};
	const char instruction[4][15]=
	{
		"bgtz",
		"bgez",
		"bltz",
		"blez"
	};
	//-------------------------
	inline void doit(int num,int srcA)
	{
		int value=hardWare.tmpgrf[srcA];
		if (num==0)
		{
			hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[0]++;
			if (value<=0) hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[0]--;
		}
		else if (num==1)
		{
			hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[1]++;
			if (value<0) hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[1]--;
		}
		else if (num==2)
		{
			hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[2]++;
			if (value>=0) hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[2]--;
		}
		else if (num==3)
		{
			hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[3]++;
			if (value>0) hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[3]--;
		}
		hardWare.tmpgrf[0]=0; return;
	}
	//-------------------------
	inline bool trydo(int a[])
	{
		hardWare.tmppc+=12;
		doit(a[0],a[1]);
		return true;
	}
	//-------------------------
	inline int select()
	{
		if (toRand) return rand()%totNum;
		int ans=100005,pos=-1;
		for (int i=0;i<totNum;i++)
		if (!vis[i] && use[i]<ans) ans=use[i],pos=i;
		if (pos==-1) return rand()%totNum;
		vis[pos]++; return pos;
	}
	//-------------------------
	inline void printuse()
	{
		for (int i=0;i<totNum;i++)
		fprintf(out,"%s jump->%d/tot->%d\n",instruction[i],branched[i],use[i]);
		return;
	}
	//-------------------------
	inline void clrVis()
	{
		for (int i=0;i<totNum;i++) use[i]-=vis[i];
		memset(vis,0,sizeof(vis)); toRand=1; return;
	}
	//-------------------------
	inline void print(int a[])
	{
		use[a[0]]++; toRand=0; memset(vis,0,sizeof(vis));
		sprintf(printBuffer[buffertot++],"%s%s$%d,TAG_%d\n",
		instruction[a[0]],strlen(instruction[a[0]])>3?"\t":"\t\t",a[1],tagtot);
		sprintf(printBuffer[buffertot++],"addiu\t$%d,$%d,1\n",a[1],a[1]);
		sprintf(printBuffer[buffertot++],"addiu\t$%d,$%d,1\n",a[1],a[1]);
		sprintf(printBuffer[buffertot++],"TAG_%d:\n",tagtot++);
	}
} bsyTypeSet;

struct mips_bsnTypeSet//id=10
{
	const int totNum=4; bool toRand=0;
	unsigned char vis[4]; int use[4]={0},branched[4]={0};
	const char instruction[4][15]=
	{
		"bgtz",
		"bgez",
		"bltz",
		"blez"
	};
	//-------------------------
	inline void doit(int num,int srcA)
	{
		int value=hardWare.tmpgrf[srcA];
		if (num==0)
		{
			hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[0]++;
			if (value<=0) hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[0]--;
		}
		else if (num==1)
		{
			hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[1]++;
			if (value<0) hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[1]--;
		}
		else if (num==2)
		{
			hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[2]++;
			if (value>=0) hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[2]--;
		}
		else if (num==3)
		{
			hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[3]++;
			if (value>0) hardWare.tmpgrf[srcA]=hardWare.tmpgrf[srcA]+1,branched[3]--;
		}
		hardWare.tmpgrf[0]=0; return;
	}
	//-------------------------
	inline bool trydo(int a[])
	{
		hardWare.tmppc+=12;
		doit(a[0],a[1]);
		return true;
	}
	//-------------------------
	inline int select()
	{
		if (toRand) return rand()%totNum;
		int ans=100005,pos=-1;
		for (int i=0;i<totNum;i++)
		if (!vis[i] && use[i]<ans) ans=use[i],pos=i;
		if (pos==-1) return rand()%totNum;
		vis[pos]++; return pos;
	}
	//-------------------------
	inline void printuse()
	{
		for (int i=0;i<totNum;i++)
		fprintf(out,"%s jump->%d/tot->%d\n",instruction[i],branched[i],use[i]);
		return;
	}
	//-------------------------
	inline void clrVis()
	{
		for (int i=0;i<totNum;i++) use[i]-=vis[i];
		memset(vis,0,sizeof(vis)); toRand=1; return;
	}
	//-------------------------
	inline void print(int a[])
	{
		use[a[0]]++; toRand=0; memset(vis,0,sizeof(vis));
		sprintf(printBuffer[buffertot++],"%s%s$%d,TAG_%d\n",
		instruction[a[0]],strlen(instruction[a[0]])>3?"\t":"\t\t",a[1],tagtot);
		sprintf(printBuffer[buffertot++],"addiu\t$%d,$%d,1\n",a[1],a[1]);
		sprintf(printBuffer[buffertot++],"addiu\t$%d,$%d,1\n",a[1],a[1]);
		sprintf(printBuffer[buffertot++],"TAG_%d:\n",tagtot++);
	}
} bsnTypeSet;

struct mips_luiSpecial//id=11
{
	const char instruction[15]="lui";
	//-------------------------
	inline void doit(int dst,int imm)
	{
		hardWare.tmpgrf[dst]=imm<<16;
		hardWare.tmpgrf[0]=0; return;
	}
	//-------------------------
	inline bool trydo(int a[])
	{
		a[2]=rand()&7;
		doit(a[1],a[2]);
		hardWare.tmppc+=4;
		return true;
	}
	//-------------------------
	inline void print(int a[])
	{
		sprintf(printBuffer[buffertot++],"%s%s$%d,%d\n",
		instruction,strlen(instruction)>3?"\t":"\t\t",a[1],a[2]);
	}
} luiSpecial;

struct mips_jrSpecial//id=12
{
	const char instruction[15]="jr";
	//-------------------------
	inline bool trydo(int a[])
	{
		if (a[3]==-1)
		{
			while (lanum==0 || lanum==31 || lanum==a[1] || lanum==laper) lanum=rand()%30+1;
			hardWare.tmpgrf[a[1]=lanum]=hardWare.tmppc+12;
			hardWare.tmppc+=8,laper=lanum,hardWare.tmpgrf[0]=0;
		}
		return true;
	}
	//-------------------------
	inline void print(int a[])
	{
		if (a[3]==-1)
		{
			fprintf(fpr,"la\t\t$%d,TAG_%d\n",a[1],tagtot);
			sprintf(printBuffer[buffertot++],"jr\t$%d\n",a[1]);
			sprintf(printBuffer[buffertot],"Y\n"),bufferType[buffertot++]=3;
			sprintf(printBuffer[buffertot++],"addi\t$1,$1,1\n"),laper=0;
			sprintf(printBuffer[buffertot++],"TAG_%d:\n",tagtot++);
		}
	}
} jrSpecial;

struct mips_jalSpecial//id=13
{
	const char instruction[15]="jal";
	//-------------------------
	inline bool trydo(int a[])
	{
		hardWare.tmpgrf[31]=hardWare.tmppc+8;
		hardWare.tmpgrf[0]=0;		
		hardWare.tmppc+=8; return true;
	}
	//-------------------------
	inline void print(int a[])
	{
		sprintf(printBuffer[buffertot++],"jal\t\tTAG_%d\n",tagtot);
		sprintf(printBuffer[buffertot],"Y\n"),bufferType[buffertot++]=3;
		sprintf(printBuffer[buffertot++],"addi\t$1,$1,1\n");
		sprintf(printBuffer[buffertot++],"TAG_%d:\n",tagtot++);
	}
} jalSpecial;

struct mips_jalrSpecial//id=14
{
	const char instruction[15]="jalr";
	//-------------------------
	inline bool trydo(int a[])
	{
		if (a[3]==-1)
		{
			while (lanum==0 || lanum==31 || lanum==a[1] || lanum==a[2] || lanum==laper) lanum=rand()%30+1;
			hardWare.tmpgrf[a[1]]=hardWare.tmppc+8;
			hardWare.tmpgrf[a[2]=lanum]=hardWare.tmppc+12;
			hardWare.tmppc+=8,laper=lanum,hardWare.tmpgrf[0]=0;
		}
		return true;
	}
	//-------------------------
	inline void print(int a[])
	{
		if (a[3]==-1)
		{
			fprintf(fpr,"la\t\t$%d,TAG_%d\n",a[2],tagtot);
			sprintf(printBuffer[buffertot++],"jalr\t$%d,$%d\n",a[1],a[2]);
			sprintf(printBuffer[buffertot],"Y\n"),bufferType[buffertot++]=3;
			sprintf(printBuffer[buffertot++],"addi\t$1,$1,1\n"),laper=0;
			sprintf(printBuffer[buffertot++],"TAG_%d:\n",tagtot++);
		}
	}
} jalrSpecial;

/*
	struct mips_rTypeSet		//id=0
	struct mips_i1TypeSet		//id=1
	struct mips_i2TypeSet		//id=2
	struct mips_lTypeSet		//id=3
	struct mips_sTypeSet		//id=4
	struct mips_mtTypeSet		//id=5
	struct mips_mfTypeSet		//id=6
	struct mips_bdyTypeSet		//id=7
	struct mips_bdnTypeSet		//id=8
	struct mips_bsyTypeSet		//id=9
	struct mips_bsnTypeSet		//id=10
	struct mips_luiSpecial		//id=11
	struct mips_jrSpecial		//id=12
	struct mips_jalSpecial		//id=13
	struct mips_jalrSpecial		//id=14
*/

inline void bothInit()
{
	getChange();
	if (DEBUGMOOD) out=fopen("generate.log","w");
	puts("testpoint generate started!"),puts("initing...");
	srand(19260817); for (int i=0;i<50;i++) dmForNormal[i]=(i+1)<<2;
	for (int i=0;i<50;i++) swap(&dmForNormal[i],&dmForNormal[rand()%50]);
	for (int i=0;i<50;i++) dmForJump[i]=dmForNormal[i]+12292;
	char tmp[111];
	if (DEBUGMOOD) strcat(dmBufferNormal,"\n");
	for (int i=0;i<50;i++)
	{
		sprintf(tmp,"addi\t$1,$0,%d\n",dmForNormal[i]);
		strcat(dmBufferNormal,tmp);
		sprintf(tmp,"sw\t\t$1,%d($0)\n",i<<2);
		strcat(dmBufferNormal,tmp);
	}
	if (DEBUGMOOD) strcat(dmBufferNormal,"\n#--------------");
	if (DEBUGMOOD) strcat(dmBufferJump,"\n");
	for (int i=0;i<50;i++)
	{
		sprintf(tmp,"addi\t$1,$0,%d\n",dmForJump[i]);
		strcat(dmBufferJump,tmp);
		sprintf(tmp,"sw\t\t$1,%d($0)\n",i<<2);
		strcat(dmBufferJump,tmp);
	}
	if (DEBUGMOOD) strcat(dmBufferJump,"\n#--------------");
	if (DEBUGMOOD) strcat(jumpSpace,"\n");
	strcat(jumpSpace,"j\t\tSTART\n\t\tnop\n");
	for (int i=0;i<150;i++)
	{
		sprintf(tmp,"JT_%d:\tjr\t$1\n\t\tnop\n",i);
		strcat(jumpSpace,tmp);
	}
	strcat(jumpSpace,"START:\n");
	if (DEBUGMOOD) strcat(jumpSpace,"\n#--------------");
	if (DEBUGMOOD) strcat(initGrf,"\n");
	for (int i=0;i<32;i++)
	{
		sprintf(tmp,"addi\t$%d,$0,252\n",i);
		strcat(initGrf,tmp);
	}
	if (DEBUGMOOD) strcat(initGrf,"\n#--------------");
	if (DEBUGMOOD) strcat(beforeJump,"\n");
	sprintf(tmp,"addi\t$8,$0,12300\n");
	strcat(beforeJump,tmp);
	sprintf(tmp,"mtlo\t$8\n");
	strcat(beforeJump,tmp);
	sprintf(tmp,"mthi\t$8\n");
	strcat(beforeJump,tmp);
	sprintf(tmp,"addi\t$8,$0,4\n");
	strcat(beforeJump,tmp);
	if (DEBUGMOOD) strcat(beforeJump,"\n#--------------");
	if (DEBUGMOOD)
	{
		for (int i=0;i<50;i++) fprintf(out,"%d\n",dmForNormal[i]);
		fputc('\n',out);
		for (int i=0;i<50;i++) fprintf(out,"%d\n",dmForJump[i]);
		fputs(dmBufferNormal,out);
		fputs(dmBufferJump,out);
		fputs(jumpSpace,out);
		fputs(initGrf,out);
	}
	for (int i=0;i<32;i++)
	{
		regDoubleVis[0][i]=-1;
		regDoubleVis[i][0]=-1;
	}
	regSingleVis[0]=-1;
	puts("init succeed!");
	return;
}

inline void tryadd(int i,int j,int k,int l)
{
	if (get[i]==15) return;
	if (jumpInstr[get[i]] && jumpInstr[get[j]]) return;
	if (jumpInstr[get[j]] && jumpInstr[get[k]]) return;
	if (jumpInstr[get[k]] && jumpInstr[use[l]]) return;
	for (int x=0;x<3;x++,blockNum++)
	{
		block[blockNum].instrType[0]=get[i];
		block[blockNum].instrType[1]=get[j];
		block[blockNum].instrType[2]=get[k];
		block[blockNum].instrType[3]=use[l];
	}
	return;
}

inline void getBlock()
{
	puts("searching blocks...");
	for (int i=0;i<getInstrNum;i++)
	for (int j=0;j<getInstrNum;j++)
	for (int k=0;k<getInstrNum;k++)
	for (int l=0;l<useInstrNum;l++)
	tryadd(i,j,k,l); if (DEBUGMOOD)
	fprintf(out,"\n\nblockNum is %d\n",blockNum);
	puts("searching succeed!"); return;
}

inline bool hasjal(int num)
{
	for (int i=0;i<4;i++)
	{
		if (block[num].instrType[i]==13)
		return true;
	}
	return false;
}

inline bool hasls(int num)
{
	for (int i=0;i<4;i++)
	{
		if (lsInstr[block[num].instrType[i]])
		return true;
	}
	return false;
}

inline bool endjump(int num)
{
	if (block[num].instrType[3]==12 || block[num].instrType[3]==14)
	return true; return false;
}

inline int singleMin()
{
	int ans=100005,pos=-1;
	for (int i=1;i<32;i++)
	{
		if (regSingleVis[i]<ans)
		ans=regSingleVis[i],pos=i;
	}
	return pos;
}

inline void setSingleReg(int num,bool jal)
{
	if (jal) block[num].regUse[0]=31;
	else block[num].regUse[0]=singleMin();
	regSingleVis[block[num].regUse[0]]++;
	block[num].regUse[1]=-1; return;
}

inline void doubleMinNoJal(int &posx,int &posy)
{
	int ans=100005;
	posx=-1,posy=-1;
	for (int i=1;i<32;i++)
	for (int j=1;j<32;j++)
	{
		if (regDoubleVis[i][j]<ans)
		ans=regDoubleVis[i][j],posx=i,posy=j;
	}
	return;
}

inline void doubleMinWithJal(int &posx,int &posy)
{
	int ans=100005;
	posx=-1,posy=-1;
	for (int i=1;i<32;i++)
	{
		if (regDoubleVis[i][31]<ans)
		ans=regDoubleVis[i][31],posx=i,posy=31;
		if (regDoubleVis[31][i]<ans)
		ans=regDoubleVis[31][i],posx=31,posy=i;
	}
	return;
}

inline void setDoubleReg(int num,bool jal,bool has0)
{
	int sx,sy; if (has0)
	{
		if (jal) sx=0,sy=31;
		else sx=0,sy=rand()%30+1;
		if (rand()&1) swap(&sx,&sy);
		block[num].regUse[0]=sx;
		block[num].regUse[1]=sy;
	}
	else
	{
		if (jal) doubleMinWithJal(sx,sy);
		else doubleMinNoJal(sx,sy);
		block[num].regUse[0]=sx;
		block[num].regUse[1]=sy;
		regDoubleVis[sx][sy]++;
	}
	return;
}

inline void setRegister()
{
	puts("setting register...");
	for (int i=0;i<blockNum;i+=3)
	{
		bool jal=hasjal(i);
		setSingleReg(i,jal);
		setDoubleReg(i+1,jal,0);
		setDoubleReg(i+2,jal,1);
	}
	if (DEBUGMOOD)
	{
		fputc('\n',out);
		for (int i=0;i<blockNum;i++)
		{
			for (int j=0;j<4;j++)
			fprintf(out,"%2d ",block[i].instrType[j]);
			fprintf(out,"-> %3d ",block[i].regUse[0]);
			fprintf(out,"%3d  ",block[i].regUse[1]);
			if (!((i+1)%6)) fputc('\n',out);
		}
		fputc('\n',out);
		for (int i=0;i<32;i++)
		fprintf(out,"%d ",regSingleVis[i]);
		fputc('\n',out),fputc('\n',out);
		for (int i=0;i<32;i++,fputc('\n',out))
		for (int j=0;j<32;j++,fputc(' ',out))
		fprintf(out,"%2d",regDoubleVis[i][j]);
	}
	puts("setting succeed!");
	return;
}

inline void debugInstr()
{
	rTypeSet.debug();
	i1TypeSet.debug();
	i2TypeSet.debug();
	lTypeSet.debug();
	sTypeSet.debug();
	mtTypeSet.debug();
	return;
}

inline void getBlockType()
{
	puts("getting block type...");
	for (int i=0;i<blockNum;i++)
	{
		bool ls=hasls(i);
		bool jump=endjump(i);
		if (!ls && !jump) block[i].blockType=0;
		else if (ls && !jump) block[i].blockType=1;
		else if (!ls && jump) block[i].blockType=2;
		else block[i].blockType=3;
	}
	if (DEBUGMOOD)
	{
		fputc('\n',out);
		for (int i=0;i<blockNum;i++)
		{
			fprintf(out,"%5d -> %d  ",i,block[i].blockType);
			if (!((i+1)%12)) fputc('\n',out);
		}
	}
	puts("getting succeed!");
	if (CHECKMIPS) debugInstr();
	return;
}

inline void newfile(int num,bool debug)
{
	fprintf(fpr,"#end");
	fclose(fpr); char buffer[111];
	if (debug) sprintf(buffer,"type%d.log",num);
	else
	{
		sprintf(buffer,"testpoint%d.asm",nameChange[fprtot-1]),fprtot++;
		if (((fprtot-1)%100)==0) printf("from 0 to %d printed\n",fprtot-1);
	}
	fpr=fopen(buffer,"w"); hardWare.reset(num),tagtot=0;
	if (DEBUGMOOD) fputc('#',fpr),fprintf(fpr,"%s\n",buffer);
	if (num==1) fprintf(fpr,"%s\n",dmBufferNormal);
	else if (num==2) fprintf(fpr,"%s\n",jumpSpace);
	else if (num==3) fprintf(fpr,"%s\n",jumpSpace),fprintf(fpr,"%s\n",dmBufferJump);
	fprintf(fpr,"%s\n",initGrf);
	if (num==3) fprintf(fpr,"%s\n",beforeJump),nownum=438;
	return;
}

inline void printstack(int num)
{
	if (num==0) strcpy(printBuffer[buffertot++],"lw\t\t$31,-12292($31)"),nownum++;
	else if (num==1) strcpy(printBuffer[buffertot++],(rand()&1)?"addu\t$31,$t0,$31":"addu\t$31,$31,$t0"),nownum++;
	else if (num==2) strcpy(printBuffer[buffertot++],"addi\t$31,$31,4"),nownum++;
	else if (num==3) strcpy(printBuffer[buffertot++],(rand()&1)?"mflo\t$31":"mfhi\t$31"),nownum++;
	else if (num==4)
	{
		sprintf(printBuffer[buffertot++],"jal\t\tTAG_%d",tagtot),nownum+=2;
		sprintf(printBuffer[buffertot++],"addi\t$31,$31,-%d",(nownum-12)<<2);
		sprintf(printBuffer[buffertot++],"TAG_%d:",tagtot++);
	}
	else if (num==5)
	{
		sprintf(printBuffer[buffertot],"la\t\t$t%d,TAG_%d",uset,tagtot),bufferType[buffertot++]=1;
		sprintf(printBuffer[buffertot++],"jalr\t$31,$t%d",uset++),nownum+=3;
		sprintf(printBuffer[buffertot++],"addi\t$31,$31,-%d",(nownum-12)<<2),sprintf(printBuffer[buffertot++],"TAG_%d:",tagtot++);
	}
	else if (num==6) strcpy(printBuffer[buffertot++],"nop"),nownum++;
	return;
}

inline void fixbuffer()
{
	for (int i=0;i<buffertot;i++) if (bufferType[i]) fprintf(fpr,"%s\n",printBuffer[i]);
	for (int i=0;i<buffertot;i++) if (!bufferType[i]) fprintf(fpr,"%s\n",printBuffer[i]);
	if (DEBUGMOOD) fputc('\n',fpr); return;
}

inline void printwithj(int src)
{
	for (int i=0;i<2;i++)
	{
		if (nownum>jumptonew) newfile(3,0);
		buffertot=0,uset=3,memset(bufferType,0,sizeof(bufferType));
		sprintf(printBuffer[buffertot++],"addi\t$31,$0,%d",12292+((rand()&7)<<2));
		nownum+=2; for (int i=0;i<3;i++) printstack(stack[i]);
		if (i) strcpy(printBuffer[buffertot++],"jr\t\t$31"),
		sprintf(printBuffer[buffertot++],"TAG_%d:",tagtot),nownum+=2,
		sprintf(printBuffer[buffertot++],"la\t\t$1,TAG_%d",tagtot++);
		else strcpy(printBuffer[buffertot++],"jalr\t$1,$31\nnop"); fixbuffer();
	}
	return;
}

void dfsjump(int num)
{
	if (num==3) for (int j=0;j<totjump;j++) printwithj(j);
	else for (int i=0;i<totjump;i++) stack[num]=i,dfsjump(num+1);
	return;
}

inline bool check(int index)
{
	for (int i=0;i<4;i++)
	{
		if (block[index].instrType[i]==0) {if (rTypeSet.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==1) {if (i1TypeSet.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==2) {if (i2TypeSet.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==3) {if (lTypeSet.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==4) {if (sTypeSet.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==5) {if (mtTypeSet.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==6) {if (mfTypeSet.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==7) {if (bdyTypeSet.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==8) {if (bdnTypeSet.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==9) {if (bsyTypeSet.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==10) {if (bsnTypeSet.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==11) {if (luiSpecial.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==12) {if (jrSpecial.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==13) {if (jalSpecial.trydo(block[index].instr[i])==false) return false;}
		else if (block[index].instrType[i]==14) {if (jalrSpecial.trydo(block[index].instr[i])==false) return false;}
		else hardWare.tmppc+=4;
	}
	return true;
}

inline bool hasmt(int index)
{
	for (int i=0;i<4;i++)
	if (block[index].instrType[i]==5 || block[index].instrType[i]==6)
	return true; return false;
}

inline void print(int index)
{
	buffertot=0;
	memset(bufferType,0,sizeof(bufferType));
	for (int i=0;i<4;i++)
	{
		if (block[index].instrType[i]==0) rTypeSet.print(block[index].instr[i]);
		else if (block[index].instrType[i]==1) i1TypeSet.print(block[index].instr[i]);
		else if (block[index].instrType[i]==2) i2TypeSet.print(block[index].instr[i]);
		else if (block[index].instrType[i]==3) lTypeSet.print(block[index].instr[i]);
		else if (block[index].instrType[i]==4) sTypeSet.print(block[index].instr[i]);
		else if (block[index].instrType[i]==5) mtTypeSet.print(block[index].instr[i]);
		else if (block[index].instrType[i]==6) mfTypeSet.print(block[index].instr[i]);
		else if (block[index].instrType[i]==7) bdyTypeSet.print(block[index].instr[i]);
		else if (block[index].instrType[i]==8) bdnTypeSet.print(block[index].instr[i]);
		else if (block[index].instrType[i]==9) bsyTypeSet.print(block[index].instr[i]);
		else if (block[index].instrType[i]==10) bsnTypeSet.print(block[index].instr[i]);
		else if (block[index].instrType[i]==11) luiSpecial.print(block[index].instr[i]);
		else if (block[index].instrType[i]==12) jrSpecial.print(block[index].instr[i]);
		else if (block[index].instrType[i]==13) jalSpecial.print(block[index].instr[i]);
		else if (block[index].instrType[i]==14) jalrSpecial.print(block[index].instr[i]);
		else if (block[index].instrType[i]==15) sprintf(printBuffer[buffertot++],"nop\n");
	}
	for (int i=0;i<buffertot;i++)
	{
		if (bufferType[i]) fprintf(fpr,"%s",printBuffer[i+bufferType[i]]),printBuffer[i+bufferType[i]][0]=0;
		else if (printBuffer[i][0]) fprintf(fpr,"%s",printBuffer[i]);
	}
	if (hasmt(index))
	{
		fprintf(fpr,"mflo\t$1\nmfhi\t$2\n");
		hardWare.tmpgrf[1]=hardWare.tmplo;
		hardWare.tmpgrf[2]=hardWare.tmphi;
		hardWare.tmppc+=8;
	}
	if (DEBUGMOOD) fprintf(fpr,"#%x\n",hardWare.tmppc);
	return;
}

inline void fixzero()
{
	for (int i=1;i<32;i++)
	{
		if (hardWare.tmpgrf[i]==0)
		{
			hardWare.tmpgrf[i]=rand()&255;
			fprintf(fpr,"addi\t$%d,$0,%d\n",i,hardWare.tmpgrf[i]);
			hardWare.tmppc+=4;
		}
	}
	return;
}

inline void fixmess(int index)
{
	for (int i=0;i<4;i++)
	hardWare.tmppc+=(block[index].instrType[i]==14 || block[index].instrType[i]==12)<<2;
	return;
}

inline int notper(int index,int num)
{
	if (num==0) return rand()&1;
	if (block[index].regUse[1]==-1) return rand()&1;
	if (block[index].instr[num-1][1]==-1) return rand()&1;
	if (block[index].instr[num-1][1]==block[index].regUse[0]) return 1;
	if (block[index].instr[num-1][1]==block[index].regUse[1]) return 0;
	return rand()&1;
}

inline void selectInstr(int index)
{

	for (int num=0;num<4;num++)
	{
		if (block[index].instrType[num]==0)
		{
			block[index].instr[num][0]=rTypeSet.select();
			if (block[index].regUse[1]==-1)
			{
				block[index].instr[num][1]=block[index].regUse[0];
				block[index].instr[num][2]=block[index].regUse[0];
				block[index].instr[num][3]=block[index].regUse[0];
			}
			else
			{
				block[index].instr[num][1]=block[index].regUse[notper(index,num)];
				block[index].instr[num][2]=block[index].regUse[rand()&1];
				block[index].instr[num][3]=block[index].regUse[rand()&1];
			}
		}
		else if (block[index].instrType[num]==1)
		{
			block[index].instr[num][0]=i1TypeSet.select();
			if (block[index].regUse[1]==-1)
			{
				block[index].instr[num][1]=block[index].regUse[0];
				block[index].instr[num][2]=block[index].regUse[0];
			}
			else
			{
				block[index].instr[num][1]=block[index].regUse[rand()&1];
				block[index].instr[num][2]=block[index].regUse[rand()&1];
			}
			block[index].instr[num][3]=-1;
		}
		else if (block[index].instrType[num]==2)
		{
			block[index].instr[num][0]=i2TypeSet.select();
			if (block[index].regUse[1]==-1)
			{
				block[index].instr[num][1]=block[index].regUse[0];
				block[index].instr[num][2]=block[index].regUse[0];
			}
			else
			{
				block[index].instr[num][1]=block[index].regUse[rand()&1];
				block[index].instr[num][2]=block[index].regUse[rand()&1];
			}
			block[index].instr[num][3]=-1;
		}
		else if (block[index].instrType[num]==3)
		{
			block[index].instr[num][0]=lTypeSet.select();
			if (block[index].regUse[1]==-1)
			{
				block[index].instr[num][1]=block[index].regUse[0];
				block[index].instr[num][2]=block[index].regUse[0];
			}
			else
			{
				block[index].instr[num][1]=block[index].regUse[rand()&1];
				block[index].instr[num][2]=block[index].regUse[rand()&1];
			}
			block[index].instr[num][3]=-1;
		}
		else if (block[index].instrType[num]==4)
		{
			block[index].instr[num][0]=sTypeSet.select();
			if (block[index].regUse[1]==-1)
			{
				block[index].instr[num][1]=block[index].regUse[0];
				block[index].instr[num][2]=block[index].regUse[0];
			}
			else
			{
				block[index].instr[num][1]=block[index].regUse[rand()&1];
				block[index].instr[num][2]=block[index].regUse[rand()&1];
			}
			block[index].instr[num][3]=-1;
		}
		else if (block[index].instrType[num]==5)
		{
			block[index].instr[num][0]=mtTypeSet.select();
			if (block[index].regUse[1]==-1)
			{
				block[index].instr[num][1]=block[index].regUse[0];
				block[index].instr[num][2]=block[index].regUse[0];
			}
			else
			{
				block[index].instr[num][1]=block[index].regUse[rand()&1];
				block[index].instr[num][2]=block[index].regUse[rand()&1];
			}
			block[index].instr[num][3]=-1;
		}
		else if (block[index].instrType[num]==6)
		{
			block[index].instr[num][0]=mfTypeSet.select();
			block[index].instr[num][1]=block[index].regUse[0];
			block[index].instr[num][2]=-1;
			block[index].instr[num][3]=-1;
		}
		else if (block[index].instrType[num]==7)
		{
			block[index].instr[num][0]=bdyTypeSet.select();
			if (block[index].regUse[1]==-1)
			{
				block[index].instr[num][1]=block[index].regUse[0];
				block[index].instr[num][2]=block[index].regUse[0];
			}
			else
			{
				block[index].instr[num][1]=block[index].regUse[rand()&1];
				block[index].instr[num][2]=block[index].regUse[rand()&1];
			}
			block[index].instr[num][3]=-1;
		}
		else if (block[index].instrType[num]==8)
		{
			block[index].instr[num][0]=bdnTypeSet.select();
			if (block[index].regUse[1]==-1)
			{
				block[index].instr[num][1]=block[index].regUse[0];
				block[index].instr[num][2]=block[index].regUse[0];
			}
			else
			{
				block[index].instr[num][1]=block[index].regUse[rand()&1];
				block[index].instr[num][2]=block[index].regUse[rand()&1];
			}
			block[index].instr[num][3]=-1;
		}
		else if (block[index].instrType[num]==9)
		{
			block[index].instr[num][0]=bsyTypeSet.select();
			block[index].instr[num][1]=block[index].regUse[0];
			block[index].instr[num][2]=-1;
			block[index].instr[num][3]=-1;
		}
		else if (block[index].instrType[num]==10)
		{
			block[index].instr[num][0]=bsnTypeSet.select();
			block[index].instr[num][1]=block[index].regUse[0];
			block[index].instr[num][2]=-1;
			block[index].instr[num][3]=-1;
		}
		else if (block[index].instrType[num]==11) 
		{
			block[index].instr[num][0]=0;
			block[index].instr[num][1]=block[index].regUse[0];
			block[index].instr[num][2]=-1;
			block[index].instr[num][3]=-1;
		}
		else if (block[index].instrType[num]==12) 
		{
			block[index].instr[num][0]=0;
			block[index].instr[num][1]=block[index].regUse[0];
			block[index].instr[num][2]=-1;
			block[index].instr[num][3]=-1;
		}
		else if (block[index].instrType[num]==13) 
		{
			block[index].instr[num][0]=0;
			block[index].instr[num][1]=-1;
			block[index].instr[num][2]=-1;
			block[index].instr[num][3]=-1;
		}
		else if (block[index].instrType[num]==14) 
		{
			block[index].instr[num][0]=0;
			block[index].instr[num][1]=block[index].regUse[0];
			if (~block[index].regUse[1]) block[index].instr[num][2]=block[index].regUse[1];
			else block[index].instr[num][2]=block[index].regUse[0];
			block[index].instr[num][3]=(num==3)?-2:-1;
		}
		else if (block[index].instrType[num]==15) 
		{
			block[index].instr[num][0]=0;
			block[index].instr[num][1]=-1;
			block[index].instr[num][2]=-1;
			block[index].instr[num][3]=-1;
		}
	}
	return;
}

inline void printBlock(int index)
{
	trynum=0;
	fixzero(),fixmess(index),selectInstr(index);
	while (check(index)==false)
	{
		fixzero();
		fixmess(index);
		selectInstr(index);
		if (DEBUGMOOD) fprintf(out,"failed in %d\n",index);
		rTypeSet.clrVis();
		i1TypeSet.clrVis();
		i2TypeSet.clrVis();
		lTypeSet.clrVis();
		sTypeSet.clrVis();
		mfTypeSet.clrVis();
		mtTypeSet.clrVis();
		bsnTypeSet.clrVis();
		bsyTypeSet.clrVis();
		bdnTypeSet.clrVis();
		bdyTypeSet.clrVis();
		hardWare.back(),trynum++;
		if (trynum==tryMaxTime)
		{
			if (DEBUGMOOD)
			fprintf(out,"no print %d\n",index);
			return;
		}
	}
	print(index),hardWare.update();
	return;
}

inline void printnum()
{
	int num=0;
	for (int i=0;i<blockNum;i++)
	if (!printed[i]) num++;
	printf("%d/%d need to print\n",num,blockNum);
	return;
}

inline void printNormal()
{
	if (DEBUGMOOD) for (int i=0;i<4;i++) newfile(i,1);
	puts("printing type1..."),newfile(0,0);
	for (int i=0;i<blockNum;i++)
	{
		if (printed[i] || block[i].blockType!=0) continue;
		if (hardWare.pc>=topNum) newfile(0,0);
		printBlock(i); printed[i]=1; if (DEBUGMOOD) fputc('\n',fpr);
	}
	printf("type1 tot %d printed!\n",fprtot-1);
	printnum(); return;
}

inline void printSaveLoad()
{
	puts("printing type2..."),newfile(1,0);
 	for (int i=0;i<blockNum;i++)
	{
		if (printed[i] || block[i].blockType!=1) continue;
		if (hardWare.pc>=topNum) newfile(1,0);
		printBlock(i); printed[i]=1; if (DEBUGMOOD) fputc('\n',fpr);
	}
	printf("type2 tot %d printed!\n",fprtot-1);
	printnum(); return;
}

inline void printJump()
{
	puts("printing type3..."),newfile(3,0);
 	dfsjump(0),memset(printed,-1,sizeof(printed));
	printf("type3 tot %d printed!\n",fprtot-1);
	printnum(); return;
}

inline void analyse()
{
	fprintf(fpr,"#end"),fclose(fpr);
	printf("all %d testpoint generated!",fprtot-1);
	puts("\nwish you ak them all!");
	if (!DEBUGMOOD) return;
	rTypeSet.printuse();
	i1TypeSet.printuse();
	i2TypeSet.printuse();
	lTypeSet.printuse();
	sTypeSet.printuse();
	mtTypeSet.printuse();
	mfTypeSet.printuse();
	bdyTypeSet.printuse();
	bdnTypeSet.printuse();
	bsyTypeSet.printuse();
	bsnTypeSet.printuse();
	return;
}

int main()
{
	bothInit();
	getBlock();
	setRegister();
	getBlockType();
	printNormal();
	printSaveLoad();
	printJump();
	analyse();
	return 0;
}