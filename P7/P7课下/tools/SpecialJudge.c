#include <stdio.h>
#include <string.h>

char buffer1[10005],buffer2[10005];

int main()
{
	FILE *crt,*lxh;
	crt=fopen("crt/out.txt","r");
	lxh=fopen("lxh/out.txt","r");
	int index1,index2,cnt=0; char *p;
	while ((p=fgets(buffer1,10005,crt)))
	{
		if (strstr(buffer1,"<=")==NULL) continue;
		while ((p=fgets(buffer2,10005,lxh)))
			if (strstr(buffer2,"<=")!=NULL) break; cnt++;
		if (p==NULL) {puts("crt is more"); fclose(crt),fclose(lxh); return 1;}
		for (index1=0;buffer1[index1] && buffer1[index1]!='@';) index1++;
		for (index2=0;buffer2[index2] && buffer2[index2]!='@';) index2++;
		if (strcmp(buffer1+index1,buffer2+index2))
		{
			printf("wrong at line %d\n",cnt);
			printf("crt answer is %s\n",buffer1+index1);
			printf("lxh answer is %s\n",buffer2+index2);
			fclose(crt),fclose(lxh); return 1;
		}
	}
	p=fgets(buffer2,10005,lxh);
	if (p!=NULL) {puts("lxh is more"); fclose(crt),fclose(lxh); return 1;}
	printf("tot %d that's good oh yeah",cnt);
	fclose(crt),fclose(lxh); return 0;
}