#include <stdio.h>
#include <stdlib.h>
#define DEBUGMOOD 0

const int totdb=5,totuse=15,totnorm=8;
const int levelnorm=4,dbrep=2,tonewfile=850;

int initarray[35],stack[10];
int fleptr,tagptr,nownum,hasdeal;

inline void swap(int *x,int *y)
{
	int tmp=*x; *x=*y;
	*y=tmp; return;
}

inline void reinit()
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

inline void endfile(int toinit)
{
	int start=2048,memptr=0;
	puts("#--------------\n");
	printf("addi\t$t0,$0,2222\n");
	printf("sw\t\t$t0,%d($0)\n",start+(memptr<<2)),memptr++;
	printf("addi\t$t0,$0,3333\n");
	printf("sw\t\t$t0,%d($0)\n",start+(memptr<<2)),memptr++;
	printf("addi\t$t0,$0,4444\n");
	printf("sw\t\t$t0,%d($0)",start+(memptr<<2)),memptr++;
	if (toinit) reinit(); return;
}

inline void bothinit()
{
	srand(19260817);
	for (int i=0;i<30;i++)
		initarray[i]=(i+1)<<2;
	for (int i=0;i<30;i++)
		swap(&initarray[i],&initarray[rand()%30]);
	fleptr=1; reinit(); return;
}

inline void printgap(int doit,int num)
{
	if (num==0)
	{
		puts(hasdeal?"lw\t\t$31,-12288($31)":"lw\t\t$31,0($31)");
		if (hasdeal && !doit) hasdeal=0;
	}
	else if (num==1) puts(hasdeal?"sw\t\t$31,-8192($31)":"sw\t\t$31,4096($31)");
	else if (num==2) puts("addu\t$31,$t0,$31");
	else if (num==3) puts("addu\t$31,$31,$t0");
	else if (num==4) puts("addi\t$31,$31,4");
	return;
}

inline void printget(int num)
{
	if (num==0) puts(hasdeal?"lw\t\t$31,-12288($31)":"lw\t\t$31,0($31)"),nownum++,hasdeal=0;
	else if (num==1) puts(hasdeal?"addu\t$31,$t2,$31":"addu\t$31,$t0,$31"),nownum++,hasdeal=0;
	else if (num==2) puts(hasdeal?"addu\t$31,$31,$t2":"addu\t$31,$31,$t0"),nownum++,hasdeal=0;
	else if (num==3) puts(hasdeal?"addi\t$31,$31,-12288":"addi\t$31,$31,4"),nownum++,hasdeal=0;
	else if (num==4)
	{
		printf("jal\t\tTAG_%d\n",tagptr),nownum+=3,hasdeal=1;
		printgap(0,rand()%5),printgap(1,rand()%5);
		printf("TAG_%d:\n",tagptr++);
	}
	else if (num==5)
	{
		printf("la\t\t$t3,TAG_%d\n",tagptr),puts("jalr\t$31,$t3"),hasdeal=1;
		printgap(0,rand()%5),printgap(1,rand()%5),nownum+=4;
		printf("TAG_%d:\n",tagptr++);
	}
	else if (num==6)
	{
		printf("la\t\t$t3,TAG_%d\n",tagptr),puts("addi\t$t3,$t3,2");
		puts("addi\t$t3,$t3,-2"),puts("jalr\t$31,$t3"),hasdeal=1;
		printgap(0,rand()%5),printgap(1,rand()%5),nownum+=6;
		printf("TAG_%d:\n",tagptr++);
	}
	else if (num==7)
	{
		printf("la\t\t$t3,TAG_%d\n",tagptr),puts("sw\t\t$t3,12284($0)");
		puts("lw\t\t$t3,12284($0)"),puts("jalr\t$31,$t3"),hasdeal=1;
		printgap(0,rand()%5),printgap(1,rand()%5),nownum+=6;
		printf("TAG_%d:\n",tagptr++);
	}
	return;
}

inline void printuse(int num)
{
	if (num==0) puts(hasdeal?"lw\t\t$31,-12288($31)":"lw\t\t$31,0($31)"),nownum++;
	else if (num==1) puts(hasdeal?"sw\t\t$31,-8192($31)":"sw\t\t$31,4096($31)"),nownum++;
	else if (num==2) puts("addu\t$31,$t0,$31"),nownum++;
	else if (num==3) puts("addu\t$31,$31,$t0"),nownum++;
	else if (num==4)
	{
		printf("beq\t\t$31,$31,TAG_%d\n",tagptr);
		printgap(0,rand()%5),printgap(0,rand()%5),nownum+=3;
		printf("TAG_%d:\n",tagptr++);
	}
	else if (num==5)
	{
		printf("beq\t\t$31,$0,TAG_%d\n",tagptr);
		printgap(0,rand()%5),printgap(0,rand()%5),nownum+=3;
		printf("TAG_%d:\n",tagptr++);
	}
	else if (num==6)
	{
		puts("addi\t$t1,$31,0"),printf("beq\t\t$t1,$31,TAG_%d\n",tagptr);
		printgap(0,rand()%5),printgap(0,rand()%5),nownum+=4;
		printf("TAG_%d:\n",tagptr++);
	}
	else if (num==7)
	{
		puts("addi\t$t1,$31,1"),printf("beq\t\t$31,$t1,TAG_%d\n",tagptr);
		printgap(0,rand()%5),printgap(1,rand()%5),nownum+=4;
		printf("TAG_%d:\n",tagptr++);
	}
	else if (num==8) puts("addi\t$31,$31,4"),nownum++;
	else if (num==9)
	{
		printf("la\t\t$31,TAG_%d\n",tagptr),puts("jr\t\t$31"),hasdeal=1;
		printgap(0,rand()%5),printgap(1,rand()%5),nownum+=4;
		printf("TAG_%d:\n",tagptr++);
	}
	else if (num==10)
	{
		printf("la\t\t$31,TAG_%d\n",tagptr),puts("addi\t$31,$31,2");
		puts("addi\t$31,$31,-2"),puts("jr\t\t$31"),hasdeal=1;
		printgap(0,rand()%5),printgap(1,rand()%5),nownum+=6;
		printf("TAG_%d:\n",tagptr++);
	}
	else if (num==11)
	{
		printf("la\t\t$31,TAG_%d\n",tagptr),puts("sw\t\t$31,12284($0)");
		puts("lw\t\t$31,12284($0)"),puts("jr\t\t$31"),hasdeal=1;
		printgap(0,rand()%5),printgap(1,rand()%5),nownum+=6;
		printf("TAG_%d:\n",tagptr++);
	}
	else if (num==12)
	{
		printf("la\t\t$31,TAG_%d\n",tagptr),puts("jalr\t$t3,$31"),hasdeal=1;
		printgap(0,rand()%5),printgap(1,rand()%5),nownum+=4;
		printf("TAG_%d:\n",tagptr++);
	}
	else if (num==13)
	{
		printf("la\t\t$31,TAG_%d\n",tagptr),puts("addi\t$31,$31,2");
		puts("addi\t$31,$31,-2"),puts("jalr\t$t3,$31"),hasdeal=1;
		printgap(0,rand()%5),printgap(1,rand()%5),nownum+=6;
		printf("TAG_%d:\n",tagptr++);
	}
	else if (num==14)
	{
		printf("la\t\t$31,TAG_%d\n",tagptr),puts("sw\t\t$31,12284($0)");
		puts("lw\t\t$31,12284($0)"),puts("jalr\t$t3,$31"),hasdeal=1;
		printgap(0,rand()%5),printgap(1,rand()%5),nownum+=6;
		printf("TAG_%d:\n",tagptr++);
	}
	return;
}

inline int hasdb(int src)
{
	if (src>3 && src!=8) return 1;
	for (int i=0;i<levelnorm;i++)
	if (stack[i]>3) return 1; return 0;
}

inline void printwithdb(int src)
{
	if (DEBUGMOOD) for (int i=0;i<levelnorm;i++) printf("%d ",stack[i]);
	if (DEBUGMOOD) printf("\n%d\n",src);
	for (int i=0,f=1,db=hasdb(src);f || (i<dbrep && db);i++,f=0)
	{
		if (!DEBUGMOOD && nownum>tonewfile) endfile(true);
		printf("addi\t$31,$0,%d\n",(rand()&7)<<2),nownum++,hasdeal=0;
		for (int i=0;i<levelnorm;i++) printget(stack[i]);
		printuse(src),putchar('\n');
	}
	return;
}

void dfsnorm(int num)
{
	if (num==levelnorm)
	{
		for (int j=0;j<totuse;j++)
		printwithdb(j); return;
	}
	for (int i=0;i<totnorm;i++)
		stack[num]=i,dfsnorm(num+1);
	return;
}

int main()
{
	bothinit(); dfsnorm(0);
	endfile(false); return 0;
}