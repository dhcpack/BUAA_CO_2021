#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int tot;
char s[111][22];

void ins(char in[])
{
	for (int i=0;i<tot;i++)
		if (strcmp(s[i],in)==0) return;
	strcpy(s[tot++],in);
	return;
}

int cmp(const void *a,const void *b)
{
	return strcmp((char*)a,(char*)b);
}

int main()
{
	char r[111],cmd[22];
	for (int i=0,end=0;gets(r);i=0,end=0)
	{
		while (r[i]==' ' || r[i]=='\t') i++;
		if (r[i]=='\r' || r[i]=='\n' || r[i]=='#') continue;

		if (strchr(r+i,':'))
		{
			while (r[i]!=':') i++; i++;
			while (r[i]==' ' || r[i]=='\t') i++;
		}

		while ('a'<=r[i] && r[i]<='z') cmd[end++]=r[i++];
		if (end) cmd[end]=0,ins(cmd);
	}
	qsort(s,tot,sizeof(s[0]),cmp);
	for (int i=0;i<tot;i++) puts(s[i]);
	return 0;
}