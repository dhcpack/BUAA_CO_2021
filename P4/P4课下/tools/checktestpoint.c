#include <stdio.h>
#include <stdlib.h>
#include <string.h>

FILE* check;
char syscal[505],buffer[1000005];

int main()
{
	int n; char* p; scanf("%d",&n);
	for (int i=0;i<n;i++)
	{
		sprintf(buffer,"testpoint%d.asm",i+1);
		sprintf(syscal,"java -jar mars.jar nc mc CompactDataAtZero dump .text HexText code.txt >ans.txt %s",buffer);
		system(syscal),check=fopen("ans.txt","r");
		fread(buffer,1000000,1,check),fclose(check);
		if ((p=strstr(buffer,"Error")))
		{
			char* np=strstr(p,"errors.");
			*(np+7)=0; puts(""),puts(p); break;
		}
		else printf("testpoint%d.asm successfully checked\n",i+1);
	}
	return 0;
}