#include <stdio.h>

char s[1111]; int tot;
unsigned int data[111111];

inline bool judge(char c)
{
	if ('0'<=c && c<='9') return 1;
	if ('a'<=c && c<='f') return 1;
	return 0;
}

inline unsigned int change(char c)
{
	if ('0'<=c && c<='9') return c-'0';
	if ('a'<=c && c<='f') return c-'a'+10;
	return 0;
}

inline int todigit(int num)
{
	int ans;
	char s[11];
	sprintf(s,"%x",num);
	sscanf(s,"%d",&ans);
	return ans;
}

int main()
{
	freopen("out.txt","w",stdout);
	gets(s);
	while (gets(s))
	{
		int rep=1;
		unsigned int num=0;
		for (int i=0;s[i];i++)
		{
			if (judge(s[i]))
				num=(num<<4)+change(s[i]);
			else if (s[i]=='*')
				rep=todigit(num),num=0;
			else if (s[i]==' ')
			{
				for (int j=0;j<rep;j++)
					data[tot++]=num;
				num=0,rep=1;
			}
		}
		for (int j=0;j<rep;j++)
			data[tot++]=num;
	}
	//printf("%d\n",tot);
	for (int i=0;i<tot;i++)
		printf("%08x\n",data[i]);
	return 0;
}