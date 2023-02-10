#include <stdio.h>
#include <stdlib.h>

typedef struct
{
	int x,y;
	int num;
} block;

int tot;
block map[500];

inline int cmp(const void *a,const void *b)
{
	block *obja=(block*)a;
	block *objb=(block*)b;
	if (obja->num-objb->num) return obja->num-objb->num;
	if (obja->x-objb->x) return obja->x-objb->x;
	if (obja->y-objb->y) return obja->y-objb->y;
	return 0;
}

inline bool judge(int c)
{
	if ('0'<=c && c<='9') return true;
	if ('A'<=c && c<='F') return true;
	return false;
}

inline int change(int c)
{
	if ('0'<=c && c<='9') return c-'0';
	if ('A'<=c && c<='F') return c-'A'+10;
	return -1;
}

inline int read()
{
	int ans=0,c=0;
	for (int cnt=0;cnt<8;)
	{
		while (!judge(c)) c=getchar();
		ans<<=4,ans|=change(c),cnt++;
		if (cnt<8) c=getchar();
	}
	printf("%08x\n",ans);
	return ans;
}

int main()
{
	freopen("ans.txt","r",stdin);
	for (register int i=0;i<28;i++)
	for (register int j=0;j<16;j++)
	{
		printf("%d %d\n",i,j);
		map[tot].x=i,map[tot].y=j;
		map[tot++].num=read();
	}
	for (int i=0;i<tot;i++,putchar('\n'))
	printf("%02d %02d 0x%08x",map[i].x,map[i].y,map[i].num);
	freopen("testpoint1.asm","w",stdout);
	qsort(map,tot,sizeof(*map),cmp);
	puts(".text");
	printf("li\t\t$t0,0x%08x\n",map[0].num);
	printf("sw\t\t$t0,%d($0)\n",((map[0].x<<4)+map[0].y)<<2);
	for (int i=1;i<tot;i++)
	{
		if (map[i].num-map[i-1].num) printf("li\t\t$t0,0x%08x\n",map[i].num);
		printf("sw\t\t$t0,%d($0)\n",((map[i].x<<4)+map[i].y)<<2);
	}
	printf("\n.ktext 0x4180\neret\neret\neret");
	return 0;
}