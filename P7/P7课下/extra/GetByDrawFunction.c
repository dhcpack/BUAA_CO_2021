#include <math.h>
#include <stdio.h>

#define DFSW 6
#define DFSH 1
#define RTX 2.2
#define LTX -2.2
#define UPY 1.8
#define DNY -5.2

#define FIX 1.5
#define DEBUG 1
#define GAP 0.01
#define WIDTH 128
#define HEIGHT 28
#define DFSCOLOR 1

char map[HEIGHT][WIDTH];
char nxt[4][2]=
{
	{1,0},{-1,0},
	{0,1},{0,-1},
};

float fun1(float x)
{return FIX*sqrt(2*fabs(x)-x*x);}
float fun2(float x)
{return FIX*(asin(fabs(x)-1)-acos(-1)/2);}

char judge(short x,short y)
{
	if (x<0 || x>=HEIGHT) return 0;
	if (y<0 || y>=WIDTH) return 0;
	return map[x][y]==0;
}

void draw(float x,float y)
{
	if (y<DNY || y>UPY) return;
	short posx=(short)WIDTH*(x-LTX)/(RTX-LTX);
	short posy=(short)HEIGHT*(y-DNY)/(UPY-DNY);
	map[HEIGHT-posy][posx]=1; return;
}

void printmap()
{
	for (short i=0;i<HEIGHT;i++)
	{
		for (short j=0;j<WIDTH;j++)
		putchar(map[i][j]?'0':DEBUG?'1':32);
		putchar('\n');
	}
	return;
}

void dfs(short x,short y)
{
	if (x<DFSH || x>=HEIGHT-DFSH) return;
	if (y<DFSW || y>=WIDTH-DFSW) return;
	map[x][y]=1;
	for (short i=0;i<4;i++)
	{
		if (judge(x+nxt[i][0],y+nxt[i][1]))
		dfs(x+nxt[i][0],y+nxt[i][1]);
	}
	return;
}

inline int get(int k,int l,int r)
{
	int ans=0;
	for (int i=l;i<=r;i++)
	ans<<=1,ans|=!map[k][i];
	return ans;
}

int main()
{
	for (float tmp,i=LTX;i<=RTX;i+=GAP)
	{
		tmp=fun1(i),draw(i,tmp);
		tmp=fun2(i),draw(i,tmp);
	}
	if (DFSCOLOR) dfs(HEIGHT>>1,WIDTH>>1);
	printmap(); int tot=0;
	freopen("testpoint2.asm","w",stdout);
	puts(".text");
	for (int i=0;i<28;i++)
	{
		printf("li\t\t$t0,%d\n",get(i,0,31));
		printf("sw\t\t$t0,%d($0)\n",tot),tot+=4;
		printf("li\t\t$t0,%d\n",get(i,32,63));
		printf("sw\t\t$t0,%d($0)\n",tot),tot+=4;
		printf("li\t\t$t0,%d\n",get(i,64,95));
		printf("sw\t\t$t0,%d($0)\n",tot),tot+=4;
		printf("li\t\t$t0,%d\n",get(i,96,127));
		printf("sw\t\t$t0,%d($0)\n",tot),tot+=4;
	}
	puts("\n.ktext 0x4180");
	printf("eret");
	return 0;
}