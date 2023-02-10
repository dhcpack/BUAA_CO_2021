#include <stdio.h>
#include <stdlib.h>

typedef struct node
{
	bool vis;
	char data[15];
	struct node *s[2];
} stu,*ptr;

ptr root=NULL;
int max,datanum;
unsigned char stk[15];

ptr bulid(int num)
{
	if (num==max) return NULL;
	ptr now=(ptr)malloc(sizeof(stu));
	now->vis=0;
	now->s[0]=bulid(num+1);
	now->s[1]=bulid(num+1);
	return now;
}

bool add()
{
	int num;
	char tmps[3];
	ptr now=root;
	for (int i=0;i<max-1;i++)
	{
		if (scanf("%d",&num)==-1) return 0;
		now=now->s[num];
	}
	now->vis=1;
	getchar(),getchar(),getchar();
	for (int i=0;i<datanum;i++)
	{
		if (scanf("%s",tmps)==-1) return 0;
		if (tmps[0]=='X') tmps[0]='x';
		now->data[i]=tmps[0];
	}
	return 1;
}

void dfs(ptr now,int num)
{
	if (now==NULL) return;
	if (num==max-1)
	{
		for (int i=0;i<max-1;i++)
			printf("%d ",stk[i]);
		for (int i=0;i<datanum;i++)
			if (now->vis) printf("%c ",now->data[i]);
			else printf("x ");
		puts(""); return;
	}
	stk[num]=0;
	dfs(now->s[0],num+1);
	stk[num]=1;
	dfs(now->s[1],num+1);
	return;
}

int main()
{
	scanf("%d %d",&max,&datanum);
	max++,root=bulid(0);
	while (add());
	dfs(root,0);
	return 0;
}