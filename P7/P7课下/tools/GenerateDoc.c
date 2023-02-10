#include <io.h>
#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>

const int tabnum=1;
int filetot,finaltot; char filedir[305],buffer[50005];
char dirfind[55][305],namefind[55][105],finalout[55][10005];

inline bool uniqueName(char s[])
{
	for (int i=0;i<filetot;i++)
	if (!strcmp(s,namefind[i]))
	return 0; return 1;
}

inline void printAllFind()
{
	puts("\nfinding finished!\n");
	for (int i=0;i<filetot;i++)
	puts(namefind[i]); puts("");
	for (int i=0;i<filetot;i++)
	puts(dirfind[i]); return;
}

inline int cmp(const void *a,const void *b)
{
	return strcmp((char*)a,(char*)b);
}

void dfs(char* dir)
{
	long long handle;
	char dirbuffer[305]; _finddata_t findData;
	strcpy(dirbuffer,dir),strcat(dirbuffer,"\\*.*");
	handle=_findfirst(dirbuffer,&findData);
	if (handle==-1) return;
	do
	{
		if (findData.attrib&_A_SUBDIR)
		{
			if (!strcmp(findData.name,".") || !strcmp(findData.name,"..")) continue;
			int len=strlen(buffer);
			sprintf(buffer,"%s\\%s",buffer,findData.name);
			strcpy(dirbuffer,dir),strcat(dirbuffer,"\\");
			strcat(dirbuffer,findData.name);
			dfs(dirbuffer),buffer[len]=0;
		}
		else
		{
			int len=strlen(findData.name);
			if (len>1 && findData.name[len-1]=='v' && findData.name[len-2]=='.')
			{
				if (uniqueName(findData.name)) strcpy(namefind[filetot],findData.name),
				sprintf(dirfind[filetot++],"%s%s\\%s",filedir,buffer,findData.name);
			}
		}
	}
	while (!_findnext(handle,&findData));
	_findclose(handle); return;
}

inline bool judge(int index,bool sel)
{
	if (sel) return buffer[index]==')' && buffer[index+1]==';';
	if (!(buffer[index]=='m' && buffer[index+1]=='o' && buffer[index+2]=='d' && buffer[index+3]=='u'
		&& buffer[index+4]=='l' && buffer[index+5]=='e' && buffer[index+6]==32))
	return 0; index+=6;
	while (buffer[index]==32) index++;
	if (!isalpha(buffer[index])) return 0;
	while (buffer[index]!='\r' && buffer[index]!='\n')
	if (buffer[index]=='(') return 1;
	else index++; return 0;
}

inline void solve(char* dir)
{
	FILE* in=fopen(dir,"rb");
	printf("\nreading \"%s\" ...\n",dir);
	int n=fread(buffer,1,50005,in);
	int mood=0,end=0,f=0; buffer[n]=0;
	for (int i=0;buffer[i];i++)
	{
		if (mood && judge(i,1))
		{
			end=mood=finalout[finaltot++][end]=0;
			while (finalout[finaltot-1][end]!='(')
			putchar(finalout[finaltot-1][end++]); end=0;
			puts (" read successfully!"),f=1;
		}
		else if (judge(i,0)) mood=1;
		if (mood) finalout[finaltot][end++]=buffer[i];
	}
	if (!f) puts("");
	fclose(in); return;
}

inline bool isreg(char s[],int index)
{
	return s[index]=='r' && s[index+1]=='e'
	&& s[index+2]=='g' && s[index+3]==32;
}

inline void format(char s[])
{
	int end=0,bend=0;
	while (s[end]!='\r' && s[end]!='\n') buffer[bend++]=s[end++];
	char tmp=buffer[bend-1]; buffer[bend-1]=0;
	printf("formating %s ...\n",buffer),buffer[bend-1]=tmp;
	while (s[end]=='\r' || s[end]=='\n') end++;
	for (buffer[bend++]='\n';true;)
	{
		for (int i=0;i<tabnum;i++) buffer[bend++]='\t';
		while (s[end] && !isalpha(s[end])) end++;
		while (s[end] && s[end]!='\r' && s[end]!='\n' && s[end]!=',')
		if (isreg(s,end)) end+=4; else buffer[bend++]=s[end++];
		buffer[bend++]='\n'; if (s[end]!=',') break; 
	}
	buffer[bend++]=')',buffer[bend++]=';';
	buffer[bend]=0; strcpy(s,buffer);
	puts("format successfully!\n");
	return;
}

inline void print(int num,FILE* out)
{
	int end=0,nam=0;
	fprintf(out,"%d. ",num+1);
	while (finalout[num][end]!=32) end++; end++;
	while (isalpha(finalout[num][end]) || finalout[num][end]=='_')
	namefind[num][nam++]=finalout[num][end],fputc(finalout[num][end++],out);
	namefind[num][nam]=0,fputc('\n',out);
	fputs(finalout[num],out),fputc('\n',out),fputc('\n',out);
	return;
}

int main(int argc,char *argv[])
{
	puts("finding....");
	strcpy(filedir,argv[0]);
	for (int i=0;filedir[i];i++) if (filedir[i]=='/') filedir[i]=0;
	dfs(filedir),printAllFind();
	for (int i=0;i<filetot;i++) solve(dirfind[i]);
	qsort(finalout,finaltot,sizeof(finalout[0]),cmp);
	for (int i=0;i<finaltot;i++) format(finalout[i]);
	puts("\nprinting....");
	FILE *out=fopen("ModuleFound.txt","w");
	for (int i=0;i<finaltot;i++) print(i,out);
	for (int i=0;i<finaltot;i++) fprintf(out,"%s%s",
		namefind[i],i+1==finaltot?"":"、");
	puts("\nprinted successfully!\n");
	return 0;
}