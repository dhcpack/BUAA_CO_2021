#include <stdio.h>
#include <stdlib.h>
#define DEBUGMOOD 0

const int start=140;
const int toplevel=4;
const int maxtype1=6;
const int maxtype2=14;
const int newfile=780;
const int averageaddgap=10;
int initarray[35],stack[10];
int fleptr,memptr,tagptr,nownum;

inline void swap(int *x,int *y)
{
    int tmp=*x; *x=*y;
    *y=tmp; return;
}

inline void reinit()
{
    char tmp[111];
    sprintf(tmp,"testpoint%d.asm",fleptr);
    memptr=tagptr=0,nownum=100,fleptr++;
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
    printf("\naddi\t$t2,$0,-12288\n");
    puts("\n#--------------\n");
    return;
}

inline void endfile()
{
    puts("\n#--------------\n");
    printf("addi\t$t0,$0,2222\n");
    printf("sw\t\t$t0,%d($0)\n",start+(memptr<<2)),memptr++;
    printf("addi\t$t0,$0,3333\n");
    printf("sw\t\t$t0,%d($0)\n",start+(memptr<<2)),memptr++;
    printf("addi\t$t0,$0,4444\n");
    printf("sw\t\t$t0,%d($0)",start+(memptr<<2)),memptr++;
    reinit(); return;
}

inline void bothinit()
{
    for (int i=0;i<30;i++)
        initarray[i]=(i+1)<<2;
    for (int i=0;i<30;i++)
        swap(&initarray[i],&initarray[rand()%30]);
    fleptr=1; reinit(); return;
}

inline void printget(int kth,int per,int num)
{
    if (DEBUGMOOD) printf("%d -> ",kth);
    if (num==0) puts(per>3?"lw\t\t$31,0($t0)":"lw\t\t$31,0($31)"),nownum++;
    else if (num==1) puts(per>3?"addu\t$31,$t2,$31":"addu\t$31,$t0,$31"),nownum++;
    else if (num==2) puts(per>3?"addu\t$31,$31,$t2":"addu\t$31,$31,$t0"),nownum++;
    else if (num==3) puts(per>3?"addi\t$31,$31,-12288":"addi\t$31,$31,4"),nownum++;
    else if (num==4)
    {
        printf("jal\t\tTAG_%d\n",tagptr);
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("TAG_%d:\n",tagptr++),nownum+=3;
    }
    else if (num==5)
    {
        printf("la\t\t$t3,TAG_%d\n",tagptr),puts("jalr\t$31,$t3");
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("TAG_%d:\n",tagptr++),nownum+=3;
    }
    return;
}

inline void printuse(int per,int num)
{
    if (num==0)
    {
        puts(per>3?"lw\t\t$31,0($t0)":"lw\t\t$31,0($31)"),nownum+=2;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
    }
    else if (num==1)
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++,nownum++;
    else if (num==2)
    {
        puts("addu\t$31,$t0,$31"),nownum+=2;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
    }
    else if (num==3)
    {
        puts("addu\t$31,$31,$t0"),nownum+=2;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
    }
    else if (num==4)
    {
        printf("beq\t\t$31,$31,TAG_%d\n",tagptr);
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("TAG_%d:\n",tagptr++),nownum+=3;
    }
    else if (num==5)
    {
        printf("beq\t\t$31,$0,TAG_%d\n",tagptr);
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("TAG_%d:\n",tagptr++),nownum+=3;
    }
    else if (num==6)
    {
        printf("beq\t\t$0,$31,TAG_%d\n",tagptr);
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("TAG_%d:\n",tagptr++),nownum+=3;
    }
    else if (num==7)
    {
        puts("addi\t$t1,$31,0");
        printf("beq\t\t$t1,$31,TAG_%d\n",tagptr);
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("TAG_%d:\n",tagptr++),nownum+=4;
    }
    else if (num==8)
    {
        puts("addi\t$t1,$31,0");
        printf("beq\t\t$31,$t1,TAG_%d\n",tagptr);
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("TAG_%d:\n",tagptr++),nownum+=4;
    }
    else if (num==9)
    {
        puts("addi\t$t1,$31,1");
        printf("beq\t\t$t1,$31,TAG_%d\n",tagptr);
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("TAG_%d:\n",tagptr++),nownum+=4;
    }
    else if (num==10)
    {
        puts("addi\t$t1,$31,1");
        printf("beq\t\t$31,$t1,TAG_%d\n",tagptr);
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("TAG_%d:\n",tagptr++),nownum+=4;
    }
    else if (num==11)
    {
        puts("addi\t$31,$31,4"),nownum+=2;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
    }
    else if (num==12)
    {
        printf("la\t\t$31,TAG_%d\n",tagptr),puts("jr\t\t$31");
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("TAG_%d:\n",tagptr++),nownum+=3;
    }
    else if (num==13)
    {
        printf("la\t\t$31,TAG_%d\n",tagptr),puts("jalr\t$t3,$31");
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("sw\t\t$31,%d($0)\n",start+(memptr<<2)),memptr++;
        printf("TAG_%d:\n",tagptr++),nownum+=3;
    }
    return;
}

inline void print(int src)
{
    if (!DEBUGMOOD && nownum>newfile) endfile();
    printf("addi\t$31,$0,%d\n",(rand()%8)<<2);
    for (int i=0;i<toplevel;i++) printget(i,stack[i-1],stack[i]);
    printuse(stack[toplevel-1],src); return;
}

void dfstest(int num)
{
    if (num==toplevel)
    {
        for (int j=0;j<maxtype2;j++)
            print(j),puts(""); return;
    }
    for (int i=0;i<maxtype1;i++)
        stack[num]=i,dfstest(num+1);
    return;
}

int main()
{
    srand(19260817); bothinit();
    dfstest(0); return 0;
}