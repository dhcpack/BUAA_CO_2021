#pragma GCC optimize(2)
#pragma GCC optimize(3,"Ofast","inline")

#include <io.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define SPLITTEST 0

bool isAK=1;
const int time=20000;
const int pointnum=11;
const char isedir[105]="D:\\XilinxISE\\14.7\\ISE_DS\\ISE";
char filedir[105],testpoint[105],buffer1[505],buffer2[505];

inline void gettcl()
{
	FILE* fpr=fopen("mips.tcl","w");
	fprintf(fpr,"run %dus;\nexit\n",time);
	fclose(fpr); return;
}

void dfs(char* dir,FILE* fpr)
{
	long long handle;
	char dirbuffer[105];
	_finddata_t findData;
	strcpy(dirbuffer,dir),strcat(dirbuffer,"\\*.*");
	handle=_findfirst(dirbuffer,&findData);
	if (handle==-1) return;
	do
	{
		if (findData.attrib&_A_SUBDIR)
		{
			if (!strcmp(findData.name,".") || !strcmp(findData.name,"..")) continue;
			int len=strlen(buffer1);
			sprintf(buffer1,"%s\\%s",buffer1,findData.name);
			strcpy(dirbuffer,dir),strcat(dirbuffer,"\\");
			strcat(dirbuffer,findData.name);
			dfs(dirbuffer,fpr),buffer1[len]=0;
		}
		else
		{
			int len=strlen(findData.name);
			if (len>1 && findData.name[len-1]=='v' && findData.name[len-2]=='.')
			fprintf(fpr,"verilog work \"%s\\%s\"\n",buffer1,findData.name);
		}
	}
	while (!_findnext(handle,&findData));
	_findclose(handle); return;
}

inline void getprj()
{
	FILE* fpr=fopen("mips.prj","w");
	strcpy(buffer1,filedir);
	dfs(filedir,fpr); return;
}

inline void filecompare(const char* s)
{
	int cnt=0;
	FILE* ans=fopen("ans.txt","r");
	FILE* out=fopen("out.txt","r");
	for (int i=0;i<5;i++) fgets(buffer1,512,out);
	while (fgets(buffer2,512,ans))
	{
		cnt++;
		if (strlen(buffer2)<3) break;
		if (!fgets(buffer1,512,out))
		{
			printf("test point %s wrong at line %d\n",s,cnt);
			puts("your answer is fewer than expected answer");
			isAK=0; return;
		}
		else if (strcmp(buffer1,buffer2))
		{
			printf("test point %s wrong at line %d\n",s,cnt);
			printf("expected answer is %s\n",buffer2);
			printf("your answer is %s\n",buffer1);
			isAK=0; return;
		}
	}
	printf("test point %s accepted\n",s);
	return;
}

inline void solve(const char* s)
{
	printf("\ntesting %s\n",s);
	sprintf(buffer1,"java -jar mars.jar a nc mc CompactDataAtZero dump .text HexText code.txt %s",s),system(buffer1);
	sprintf(buffer1,"java -jar mars.jar nc mc CompactDataAtZero dump .text HexText code.txt >ans.txt %s",s),system(buffer1);
	sprintf(buffer1,"%s\\bin\\nt64\\fuse --nodebug  --prj mips.prj -o mips.exe mips_tb >log.txt",isedir),system(buffer1);
	system("mips.exe -nolog -tclbatch mips.tcl >out.txt");
	filecompare(s); return;
}

int main(int argc,char *argv[])
{
	puts("autotest started");
	strcpy(filedir,argv[0]);
	for (int i=0;filedir[i];i++)
		if (filedir[i]=='/') filedir[i]=0;
	sprintf(buffer1,"XILINX=%s",isedir);
	putenv(buffer1),gettcl(),getprj();
	puts("initial secceed");
	for (int i=0;i<pointnum;i++)
	{
		sprintf(testpoint,"testpoint%d.asm",i+1);
		solve(testpoint);
		if (SPLITTEST) getchar();
	}
	if (isAK) puts("\ncongratulation!\nyou all killed!");
	return 0;
}