#include <stdio.h>
#include <string.h>
#define DEBUGMOOD 0

int buffertop;
char buffer[505];
const int totnum=53;
const int totbit=51;
const int totsplit=4;

struct command
{
	char name[20]; short left;
	long long realControlNumber;
	int highSix,midFive,lowSix;
} command[105];

inline int find(char s[])
{
	for (int i=0;i<totnum;i++)
	if (strcmp(s,command[i].name)==0)
	return i+1; return 0;
}

inline int readchar()
{
	while (buffer[buffertop]!='0' && buffer[buffertop]!='1' && buffer[buffertop]!='X')
	if (buffer[buffertop]) buffertop++; else return -1;
	char c=buffer[buffertop++]; if (DEBUGMOOD) printf("%d\n",c=='1');
	return c=='1';
}

inline long long readnum(int tot)
{
	long long ans=0; for (int i=0;i<tot;i++)
	ans=(ans<<1)|readchar(); return ans;
}

inline void tryread(int now)
{
	if (DEBUGMOOD) printf("real control number %08X%08X\n",(int)((command[now].realControlNumber&((long long)(-1)<<32))>>32)
		,(unsigned int)(command[now].realControlNumber));
	for (int tmp;(tmp=readchar())!=-1;command[now].left--)
	command[now].realControlNumber=(command[now].realControlNumber<<1)|tmp;
	if (DEBUGMOOD) printf("real control number %08X%08X\n",(int)((command[now].realControlNumber&((long long)(-1)<<32))>>32)
		,(unsigned int)(command[now].realControlNumber)); return;
}

inline void read(int num)
{
	gets(buffer),buffertop=0;
	int tmp; char tmpname[20];
	sscanf(buffer,"%s",tmpname);
	while (buffer[buffertop] && buffer[buffertop]!=32) buffertop++;
	if (!(tmp=find(tmpname)))
	{
		strcpy(command[num].name,tmpname);
		command[num].left=totbit,command[num].highSix=readnum(6);
		if ((strcmp(command[num].name,"mfc0")==0 || strcmp(command[num].name,"mtc0")==0) ||
			command[num].highSix==1) command[num].midFive=readnum(5);
		else command[num].lowSix=readnum(6);
	}
	else num=tmp-1;
	while (buffer[buffertop] && buffer[buffertop]!=32) buffertop++;
	if (DEBUGMOOD) puts(tmpname);
	tryread(num); return;
}

inline void print(int num)
{
	printf("current command is %s\n",command[num].name);
	if (command[num].highSix==0) printf("determined by lowsix %x\n",command[num].lowSix);
	else if (command[num].highSix==1) printf("determined by midfive %x\n",command[num].midFive);
	else if (command[num].highSix==28) printf("determined by doublesix %x\n",command[num].lowSix);
	else if (command[num].highSix==16) printf("determined by special %x\n",(strcmp(command[num].name,"eret")==0)
		?command[num].lowSix:command[num].midFive);
	else printf("determined by highsix %x\n",command[num].highSix);
	printf("real control number %08X%08X\n",(int)((command[num].realControlNumber&((long long)(-1)<<32))>>32)
		,(unsigned int)(command[num].realControlNumber));
	putchar('\n'); return;
}

inline void printbin(int num)
{
	int stk[10],tot=0;
	if (command[num].highSix==0 || command[num].highSix==28 || (strcmp(command[num].name,"eret")==0))
	{
		for (int i=0;i<6;i++) stk[tot++]=command[num].lowSix&1,command[num].lowSix>>=1;
		printf("6'b"); for (int i=0;i<6;i++) putchar(stk[5-i]^48);
	}
	else if (command[num].highSix==1 || ((command[num].highSix==16) && strcmp(command[num].name,"eret")))
	{
		for (int i=0;i<5;i++) stk[tot++]=command[num].midFive&1,command[num].midFive>>=1;
		printf("5'b"); for (int i=0;i<5;i++) putchar(stk[4-i]^48);
	}
	else
	{
		for (int i=0;i<6;i++) stk[tot++]=command[num].highSix&1,command[num].highSix>>=1;
		printf("6'b"); for (int i=0;i<6;i++) putchar(stk[5-i]^48);
	}
	return;
}

inline void printstart()
{
	puts("\t//------------------------------------------------");
	puts("\tassign packedControl=(currentCommand[31:26]==0)?judgeByLowerSix:");
	puts("\t\t(currentCommand[31:26]==1)?judgeByMiddleFive:");
	puts("\t\t(currentCommand[31:26]==28)?judgeByDoubleSix:");
	puts("\t\t(currentCommand[31:26]==16)?judgeSpecialType:judgeByUpperSix;");
	puts("\t//------------------------------------------------");
	return;
}

inline void printhigh(bool notfinal)
{
	int con=0,fst=0; printf("\tassign judgeByUpperSix=");
	for (int i=0;i<totnum;i++) if (command[i].highSix!=0 && command[i].highSix!=1
		&& command[i].highSix!=28 && command[i].highSix!=16) con++;
	for (int i=0;i<totnum;i++) if (command[i].highSix!=0 && command[i].highSix!=1
		&& command[i].highSix!=28 && command[i].highSix!=16)
	{
		if (fst) putchar('\t'),putchar('\t'); else fst=1;
		printf("(currentCommand[31:26]==`%s)?(%d'h%08X%08X):",command[i].name,totbit
			,(int)((command[i].realControlNumber&((long long)(-1)<<32))>>32)
			,(unsigned int)(command[i].realControlNumber)),con--;
		if (con) puts("");
	}
	printf("%d'h0;",totbit);
	if (notfinal) puts("\n\t//------------------------------------------------");
	else printf("\n\nendmodule"); return;
}

inline void printmid(bool notfinal)
{
	int con=0,fst=0; printf("\tassign judgeByMiddleFive=");
	for (int i=0;i<totnum;i++) if (command[i].highSix==1) con++;
	for (int i=0;i<totnum;i++) if (command[i].highSix==1)
	{
		if (fst) putchar('\t'),putchar('\t'); else fst=1;
		printf("(currentCommand[20:16]==`%s)?(%d'h%08X%08X):",command[i].name,totbit
			,(int)((command[i].realControlNumber&((long long)(-1)<<32))>>32)
			,(unsigned int)(command[i].realControlNumber)),con--;
		if (con) puts("");
	}
	printf("%d'h0;",totbit);
	if (notfinal) puts("\n\t//------------------------------------------------");
	else printf("\n\nendmodule"); return;
}

inline void printlow(bool notfinal)
{
	int con=0,fst=0; printf("\tassign judgeByLowerSix=");
	for (int i=0;i<totnum;i++) if (command[i].highSix==0) con++;
	for (int i=0;i<totnum;i++) if (command[i].highSix==0)
	{
		if (fst) putchar('\t'),putchar('\t'); else fst=1;
		printf("(currentCommand[5:0]==`%s)?(%d'h%08X%08X):",command[i].name,totbit
			,(int)((command[i].realControlNumber&((long long)(-1)<<32))>>32)
			,(unsigned int)(command[i].realControlNumber)),con--;
		if (con) puts("");
	}
	printf("%d'h0;",totbit);
	if (notfinal) puts("\n\t//------------------------------------------------");
	else printf("\n\nendmodule"); return;
}

inline void printspecial(bool notfinal)
{
	int con=0,fst=0; printf("\tassign judgeSpecialType=");
	for (int i=0;i<totnum;i++) if (command[i].highSix==16) con++;
	for (int i=0;i<totnum;i++) if (command[i].highSix==16)
	{
		if (fst) putchar('\t'),putchar('\t'); else fst=1;
		if (strcmp(command[i].name,"eret")==0) printf("(currentCommand[5:0]==`%s)?(%d'h%08X%08X):",command[i].name,totbit
			,(int)((command[i].realControlNumber&((long long)(-1)<<32))>>32)
			,(unsigned int)(command[i].realControlNumber)),con--;
		else printf("(currentCommand[25:21]==`%s)?(%d'h%08X%08X):",command[i].name,totbit
			,(int)((command[i].realControlNumber&((long long)(-1)<<32))>>32)
			,(unsigned int)(command[i].realControlNumber)),con--;
		if (con) puts("");
	}
	printf("%d'h0;",totbit);
	if (notfinal) puts("\n\t//------------------------------------------------");
	else printf("\n\nendmodule"); return;
}

inline void printdouble(bool notfinal)
{
	int con=0,fst=0; printf("\tassign judgeByDoubleSix=");
	for (int i=0;i<totnum;i++) if (command[i].highSix==28) con++;
	for (int i=0;i<totnum;i++) if (command[i].highSix==28)
	{
		if (fst) putchar('\t'),putchar('\t'); else fst=1;
		printf("(currentCommand[5:0]==`%s)?(%d'h%08X%08X):",command[i].name,totbit
			,(int)((command[i].realControlNumber&((long long)(-1)<<32))>>32)
			,(unsigned int)(command[i].realControlNumber)),con--;
		if (con) puts("");
	}
	printf("%d'h0;",totbit);
	if (notfinal) puts("\n\t//------------------------------------------------");
	else printf("\n\nendmodule"); return;
}

inline void printdefine()
{
	puts("`timescale 1ns/1ps\n");
	for (int i=0;i<totnum;i++)
	{
		printf("`define %s",command[i].name);
		int len=strlen(command[i].name);
		if (len>7) putchar('\t');
		else if (len>3) putchar('\t'),putchar('\t');
		else putchar('\t'),putchar('\t'),putchar('\t');
		printbin(i),puts("");
	}
	printf("\nmodule ControlUnit(");
	return;
}

int main()
{
	for (int k=0;k<totsplit && gets(buffer);k++)
	for (int i=0;i<totnum;i++) read(i);
	for (int i=0;i<totnum;i++) print(i);
	freopen("CodeGenerated.txt","w",stdout);
	printstart(),printhigh(1),printlow(1),printmid(1),printspecial(1),printdouble(0);
	freopen("DefineGenerated.txt","w",stdout);
	printdefine(); return 0;
}