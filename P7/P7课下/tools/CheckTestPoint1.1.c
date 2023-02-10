#pragma GCC optimize(2)
#pragma GCC optimize(3,"Ofast","inline")

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

FILE* check;
char syscal[505],buffer[1000005];

inline bool judge(int i)
{
	char* p; sprintf(buffer,"testpoint%d.asm",i);
	sprintf(syscal,"java -jar mars.jar a nc mc CompactDataAtZero dump .text HexText code.txt %s",buffer),system(syscal);
	sprintf(syscal,"java -jar mars.jar a nc mc CompactDataAtZero dump 0x00004180-0x00005180 HexText code_handler.txt %s",buffer),system(syscal);
	sprintf(syscal,"java -jar mars.jar db nc mc CompactDataAtZero dump .text HexText code.txt >ans.txt %s",buffer),system(syscal);
	check=fopen("ans.txt","r"),fread(buffer,1000000,1,check),fclose(check);
	if ((p=strstr(buffer,"Error")))
	{
		char* np=strstr(p,"errors.");
		*(np+7)=0; puts(""),puts(p); return false;
	}
	else printf("testpoint%d.asm successfully checked\n",i);
	return true;
}

int main()
{
	int n; scanf("%d",&n);
	for (int i=0;i<n;i++)
		if (!judge(i+1)) return 1;
	return 0;
}