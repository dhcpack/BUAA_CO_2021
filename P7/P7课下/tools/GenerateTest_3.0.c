#pragma GCC optimize(2)
#pragma GCC optimize(3,"Ofast","inline")

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define DEBUGMOOD 0

const int jumptonew=880,totjump=10;
const int totdb=7,totuse=11,totnorm=10;
const int levelbefore=3,dbrep=2,tonewfile=850;

int fleptr,tagptr,nownum,hasdeal;
char buffer[40][65]; int buffertop,uset;
int initarray[35],stack[10],forwardtag[40];

char handlerBuffer[4005]=".ktext 0x4180\n\n_entry:\n\tmfc0\t$k0,$14\n\tmfc0\t$k1,$13\n\tori\t\t$k0,$0,0x1000\n\tsw\t\t$sp,-4($k0)\n\taddiu\t$k0,$k0,-256\n\taddu\t$sp,$k0,$0\n\tbeq\t\t$0,$0,_save_context\n\tsw\t\t$31,932($0)\n\n_main_handler:\n\tmfc0\t$k0,$13\n\tori\t\t$k1,$0,0x007c\n\tand\t\t$k0,$k1,$k0\n\tbeq\t\t$0,$k0,_restore_context\n\tsw\t\t$31,932($0)\n\tmfc0\t$k0,$14\n\taddu\t$k0,$k0,4\n\tmtc0\t$k0,$14\n\tbeq\t\t$0,$0,_restore_context\n\tsw\t\t$31,932($0)\n\n_restore:\n\teret\n\tnop\n\n_save_context:\n\tsw\t\t$1,4($sp)\n\tsw\t\t$2,8($sp)\n\tsw\t\t$3,12($sp)\n\tsw\t\t$4,16($sp)\n\tsw\t\t$5,20($sp)\n\tsw\t\t$6,24($sp)\n\tsw\t\t$7,28($sp)\n\tsw\t\t$8,32($sp)\n\tsw\t\t$9,36($sp)\n\tsw\t\t$10,40($sp)\n\tsw\t\t$11,44($sp)\n\tsw\t\t$12,48($sp)\n\tsw\t\t$13,52($sp)\n\tsw\t\t$14,56($sp)\n\tsw\t\t$15,60($sp)\n\tsw\t\t$16,64($sp)\n\tsw\t\t$17,68($sp)\n\tsw\t\t$18,72($sp)\n\tsw\t\t$19,76($sp)\n\tsw\t\t$20,80($sp)\n\tsw\t\t$21,84($sp)\n\tsw\t\t$22,88($sp)\n\tsw\t\t$23,92($sp)\n\tsw\t\t$24,96($sp)\n\tsw\t\t$25,100($sp)\n\tsw\t\t$26,104($sp)\n\tsw\t\t$27,108($sp)\n\tsw\t\t$28,112($sp)\n\tsw\t\t$29,116($sp)\n\tsw\t\t$30,120($sp)\n\tsw\t\t$31,124($sp)\n\tmfhi\t$k0\n\tsw\t\t$k0,128($sp)\n\tmflo\t$k0\n\tsw\t\t$k0,132($sp)\n\tbeq\t\t$0,$0,_main_handler\n\tsw\t\t$31,932($0)\n\n_restore_context:\n\tlw\t\t$1,4($sp)\n\tlw\t\t$2,8($sp)\n\tlw\t\t$3,12($sp)\n\tlw\t\t$4,16($sp)\n\tlw\t\t$5,20($sp)\n\tlw\t\t$6,24($sp)\n\tlw\t\t$7,28($sp)\n\tlw\t\t$8,32($sp)\n\tlw\t\t$9,36($sp)\n\tlw\t\t$10,40($sp)\n\tlw\t\t$11,44($sp)\n\tlw\t\t$12,48($sp)\n\tlw\t\t$13,52($sp)\n\tlw\t\t$14,56($sp)\n\tlw\t\t$15,60($sp)\n\tlw\t\t$16,64($sp)\n\tlw\t\t$17,68($sp)\n\tlw\t\t$18,72($sp)\n\tlw\t\t$19,76($sp)\n\tlw\t\t$20,80($sp)\n\tlw\t\t$21,84($sp)\n\tlw\t\t$22,88($sp)\n\tlw\t\t$23,92($sp)\n\tlw\t\t$24,96($sp)\n\tlw\t\t$25,100($sp)\n\tlw\t\t$26,104($sp)\n\tlw\t\t$27,108($sp)\n\tlw\t\t$28,112($sp)\n\tlw\t\t$29,116($sp)\n\tlw\t\t$30,120($sp)\n\tlw\t\t$31,124($sp)\n\tlw\t\t$k0,128($sp)\n\tmthi\t$k0\n\tlw\t\t$k0,132($sp)\n\tmtlo\t$k0\n\tbeq\t\t$0,$0,_restore\n\tsw\t\t$31,932($0)\n";

inline void swap(int *x,int *y)
{
	int tmp=*x; *x=*y;
	*y=tmp; return;
}

inline void reinitfst()
{
	char tmp[111];
	sprintf(tmp,"testpoint%d.asm",fleptr);
	tagptr=0,nownum=100,fleptr++;
	freopen(tmp,"w",stdout);
	for (int i=0;i<30;i++)
	{
		printf("addi\t$s0,$0,%d\n",initarray[i]);
		printf("sw\t\t$s0,%d($0)\n",(i+1)<<2);
	}
	puts("\n#--------------\n");
	for (int i=1;i<32;i++)
		printf("addi\t$%d,$0,23333\n",i);
	printf("\naddi\t$t0,$0,8\n");
	printf("addi\t$t2,$0,-12288\n");
	puts("\n#--------------\n");
	return;
}

inline void reinitnxt()
{
	char tmp[111];
	sprintf(tmp,"testpoint%d.asm",fleptr);
	tagptr=151,nownum=434,fleptr++;
	freopen(tmp,"w",stdout);
	puts("j\t\tSTART\n\t\tnop");
	for (int i=0;i<150;i++)
		printf("TAG_%d%sjr\t$t9\n\t\tnop\n",i,i>99?":":":\t");
	puts("START:");
	puts("\n#--------------\n");
	for (int i=0;i<50;i++)
	{
		printf("addi\t$s0,$0,%d\n",12292+(i<<2));
		printf("sw\t\t$s0,%d($0)\n",i<<2);
	}
	puts("\n#--------------\n");
	for (int i=1;i<32;i++) printf("addi\t$%d,$0,23333\n",i);
	puts("\naddi\t$t0,$0,4");
	puts("\n#--------------\n");
	return;
}

inline void endfile(int toinit)
{
	puts(handlerBuffer),printf("#--------------");
	if (toinit==1) reinitfst(); else if (toinit) reinitnxt(); return;
}

inline void bothinit()
{
	puts("testpoint generate started!"),puts("waiting...");
	srand(19260817); for (int i=0;i<30;i++) initarray[i]=(i+1)<<2;
	for (int i=0;i<30;i++) swap(&initarray[i],&initarray[rand()%30]);
	fleptr=1; reinitfst(); return;
}

inline void printgap(int doit,int num)
{
	if (num==0)
	{
		strcpy(buffer[buffertop++],hasdeal?"lw\t\t$31,-12288($31)":"lw\t\t$31,0($31)");
		if (hasdeal && !doit) hasdeal=0;
	}
	if (num==1) strcpy(buffer[buffertop++],hasdeal?"lw\t\t$0,-12288($31)":"lw\t\t$0,0($31)");
	else if (num==2) strcpy(buffer[buffertop++],hasdeal?"sw\t\t$31,-8192($31)":"sw\t\t$31,4096($31)");
	else if (num==3) strcpy(buffer[buffertop++],"addu\t$31,$t0,$31");
	else if (num==4) strcpy(buffer[buffertop++],"addu\t$0,$31,$t0");
	else if (num==5) strcpy(buffer[buffertop++],"addi\t$31,$31,4");
	else if (num==6) strcpy(buffer[buffertop++],"addi\t$0,$31,4");
	return;
}

inline void printget(int num)
{
	if (num==0) strcpy(buffer[buffertop++],hasdeal?"lw\t\t$31,-12288($31)":"lw\t\t$31,0($31)"),nownum++,hasdeal=0;
	else if (num==1) strcpy(buffer[buffertop++],hasdeal?"lw\t\t$0,-12288($31)":"lw\t\t$0,0($31)"),nownum++;
	else if (num==2) strcpy(buffer[buffertop++],hasdeal?"addu\t$31,$t2,$31":"addu\t$31,$31,$t0"),nownum++,hasdeal=0;
	else if (num==3) strcpy(buffer[buffertop++],hasdeal?"addu\t$0,$t2,$31":"addu\t$0,$31,$t0"),nownum++;
	else if (num==4) strcpy(buffer[buffertop++],hasdeal?"addi\t$31,$31,-12288":"addi\t$31,$31,4"),nownum++,hasdeal=0;
	else if (num==5) strcpy(buffer[buffertop++],hasdeal?"addi\t$0,$31,-12288":"addi\t$0,$31,4"),nownum++;
	else if (num==6)
	{
		sprintf(buffer[buffertop++],"jal\t\tTAG_%d",tagptr),nownum+=3,hasdeal=1;
		printgap(0,rand()%5),printgap(1,rand()%5),sprintf(buffer[buffertop++],"TAG_%d:",tagptr++);
	}
	else if (num==7)
	{
		sprintf(buffer[buffertop],"la\t\t$t%d,TAG_%d",uset,tagptr),forwardtag[buffertop++]=1;
		sprintf(buffer[buffertop++],"jalr\t$31,$t%d",uset++),hasdeal=1,printgap(0,rand()%5),printgap(1,rand()%5);
		sprintf(buffer[buffertop++],"TAG_%d:",tagptr++),nownum+=4;
	}
	else if (num==8)
	{
		sprintf(buffer[buffertop],"la\t\t$t%d,TAG_%d",uset,tagptr),forwardtag[buffertop++]=1;
		sprintf(buffer[buffertop++],"jalr\t$0,$t%d",uset++),printgap(0,rand()%5),printgap(1,rand()%5);
		sprintf(buffer[buffertop++],"TAG_%d:",tagptr++),nownum+=4;
	}
	else if (num==9) strcpy(buffer[buffertop++],"nop"),nownum++;
	return;
}

inline void printjump(int num)
{
	if (num==0) strcpy(buffer[buffertop++],"lw\t\t$31,-12288($31)"),nownum++;
	if (num==1) strcpy(buffer[buffertop++],"lw\t\t$0,-12288($31)"),nownum++;
	else if (num==2) strcpy(buffer[buffertop++],"addu\t$31,$t0,$31"),nownum++;
	else if (num==3) strcpy(buffer[buffertop++],"addu\t$0,$31,$t0"),nownum++;
	else if (num==4) strcpy(buffer[buffertop++],"addi\t$31,$31,4"),nownum++;
	else if (num==5) strcpy(buffer[buffertop++],"addi\t$0,$31,4"),nownum++;
	else if (num==6)
	{
		sprintf(buffer[buffertop++],"jal\t\tTAG_%d",tagptr),nownum+=2;
		sprintf(buffer[buffertop++],"addi\t$31,$31,-%d",(nownum-12)<<2);
		sprintf(buffer[buffertop++],"TAG_%d:",tagptr++);
	}
	else if (num==7)
	{
		sprintf(buffer[buffertop],"la\t\t$t%d,TAG_%d",uset,tagptr),forwardtag[buffertop++]=1;
		sprintf(buffer[buffertop++],"jalr\t$31,$t%d",uset++),nownum+=3;
		sprintf(buffer[buffertop++],"addi\t$31,$31,-%d",(nownum-12)<<2),sprintf(buffer[buffertop++],"TAG_%d:",tagptr++);
	}
	else if (num==8)
	{
		sprintf(buffer[buffertop],"la\t\t$t%d,TAG_%d",uset,tagptr),forwardtag[buffertop++]=1;
		sprintf(buffer[buffertop++],"jalr\t$0,$t%d",uset++),nownum+=3;
		strcpy(buffer[buffertop++],"nop"),sprintf(buffer[buffertop++],"TAG_%d:",tagptr++);
	}
	else if (num==9) strcpy(buffer[buffertop++],"nop"),nownum++;
	return;
}

inline void printuse(int num)
{
	if (num==0) strcpy(buffer[buffertop++],hasdeal?"lw\t\t$31,-12288($31)":"lw\t\t$31,0($31)"),nownum++;
	else if (num==1) strcpy(buffer[buffertop++],hasdeal?"sw\t\t$31,-8192($31)":"sw\t\t$31,4096($31)"),nownum++;
	else if (num==2) strcpy(buffer[buffertop++],"addu\t$31,$t0,$31"),nownum++;
	else if (num==3) strcpy(buffer[buffertop++],"addu\t$31,$31,$t0"),nownum++;
	else if (num==4)
	{
		sprintf(buffer[buffertop++],"beq\t\t$31,$31,TAG_%d",tagptr);
		printgap(0,rand()%5),printgap(0,rand()%5),sprintf(buffer[buffertop++],"TAG_%d:",tagptr++),nownum+=3;
	}
	else if (num==5)
	{
		sprintf(buffer[buffertop++],"beq\t\t$31,$0,TAG_%d",tagptr);
		printgap(0,rand()%5),printgap(0,rand()%5),sprintf(buffer[buffertop++],"TAG_%d:",tagptr++),nownum+=3;
	}
	else if (num==6)
	{
		strcpy(buffer[buffertop++],"addi\t$t1,$31,0"),sprintf(buffer[buffertop++],"beq\t\t$t1,$31,TAG_%d",tagptr);
		printgap(0,rand()%5),printgap(0,rand()%5),sprintf(buffer[buffertop++],"TAG_%d:",tagptr++),nownum+=4;
	}
	else if (num==7)
	{
		strcpy(buffer[buffertop++],"addi\t$t1,$31,1"),sprintf(buffer[buffertop++],"beq\t\t$31,$t1,TAG_%d",tagptr);
		printgap(0,rand()%5),printgap(1,rand()%5),sprintf(buffer[buffertop++],"TAG_%d:",tagptr++),nownum+=4;
	}
	else if (num==8) strcpy(buffer[buffertop++],"addi\t$31,$31,4"),nownum++;
	else if (num==9)
	{
		sprintf(buffer[buffertop++],"la\t\t$31,TAG_%d",tagptr),strcpy(buffer[buffertop++],"jr\t\t$31"),hasdeal=1;
		printgap(0,rand()%5),printgap(1,rand()%5),nownum+=4,sprintf(buffer[buffertop++],"TAG_%d:",tagptr++);
	}
	else if (num==10)
	{
		sprintf(buffer[buffertop++],"la\t\t$31,TAG_%d",tagptr),strcpy(buffer[buffertop++],"jalr\t$t3,$31"),hasdeal=1;
		printgap(0,rand()%5),printgap(1,rand()%5),sprintf(buffer[buffertop++],"TAG_%d:",tagptr++),nownum+=4;
	}
	return;
}

inline int hasdb(int src)
{
	if (src>3 && src!=8) return 1;
	for (int i=0;i<levelbefore;i++)
	if (stack[i]==6 || stack[i]==7 || stack[i]==8)
	return 1; return 0;
}

inline void fixbuffer()
{
	for (int i=0;i<buffertop;i++) if (forwardtag[i]) puts(buffer[i]);
	for (int i=0;i<buffertop;i++) if (!forwardtag[i]) puts(buffer[i]);
	puts(""); return;
}

inline void printwithdb(int src)
{
	if (DEBUGMOOD) for (int i=0;i<levelbefore;i++) printf("%d ",stack[i]);
	if (DEBUGMOOD) printf("\n%d\n",src);
	for (int i=0,f=1,db=hasdb(src);f || (i<dbrep && db);i++,f=0)
	{
		if (!DEBUGMOOD && nownum>tonewfile) endfile(1);
		buffertop=0,uset=3,memset(forwardtag,0,sizeof(forwardtag));
		sprintf(buffer[buffertop++],"addi\t$31,$0,%d",(rand()&7)<<2);
		nownum++,hasdeal=0; for (int i=0;i<levelbefore;i++) printget(stack[i]);
		printuse(src),fixbuffer();
	}
	return;
}

inline void printwithj(int src)
{
	if (DEBUGMOOD) for (int i=0;i<levelbefore;i++) printf("%d ",stack[i]);
	if (DEBUGMOOD) printf("\n%d\n",src);
	for (int i=0;i<2;i++)
	{
		if (!DEBUGMOOD && nownum>jumptonew) endfile(2);
		buffertop=0,uset=3,memset(forwardtag,0,sizeof(forwardtag));
		sprintf(buffer[buffertop++],"addi\t$31,$0,%d",12292+((rand()&7)<<2));
		nownum+=2; for (int i=0;i<levelbefore;i++) printjump(stack[i]);
		if (i) strcpy(buffer[buffertop++],"jr\t\t$31"),
			sprintf(buffer[buffertop++],"TAG_%d:",tagptr),nownum+=2,
			sprintf(buffer[buffertop++],"la\t\t$t9,TAG_%d",tagptr++);
		else strcpy(buffer[buffertop++],"jalr\t$t9,$31\nnop"); fixbuffer();
	}
	return;
}

void dfsnorm(int num)
{
	if (num==levelbefore) for (int j=0;j<totuse;j++) printwithdb(j);
	else for (int i=0;i<totnorm;i++) stack[num]=i,dfsnorm(num+1);
	return;
}

void dfsjump(int num)
{
	if (num==levelbefore) for (int j=0;j<totjump;j++) printwithj(j);
	else for (int i=0;i<totjump;i++) stack[num]=i,dfsjump(num+1);
	return;
}

inline void allend()
{
	freopen("CON","w",stdout);
	printf("all %d testpoint generated!",fleptr-1);
	puts("\nwish you ak them all!"); return;
}

int main()
{
	bothinit(),dfsnorm(0),endfile(2);
	dfsjump(0),endfile(0),allend();
	return 0;
}