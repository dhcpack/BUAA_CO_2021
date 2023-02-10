#include <stdio.h>
#define GETDEFINE 1

char aludef[17][20]=
{
	"`AandB",
	"`AorB",
	"`AaddB",
	"`AxorB",
	"`AgtzSet0",
	"`AltzSet0",
	"`AsubB",
	"`AsignedltB",
	"`AgezSet0",
	"`BlogicleftA",
	"`BlogicrightA",
	"`BsignedrightA",
	"`AnorB",
	"`AnotBSet0",
	"`AunsignedltB",
	"`AlezSet0",
	"`luiB"
};

bool read1(char name[],int num,int in[])
{
	char s[3]; int tmp;
	if (scanf("%s",name)==-1) return false;
	for (int i=0;i<num;i++)
		if (scanf("%d",&tmp)==-1) return false;
	getchar(),getchar(),getchar();
	for (int i=0;i<21;i++)
		if (scanf("%s",s)==-1) return false;
		else in[i]=s[0]=='1';
	return true;
}

bool read2(char name[],int num,int in[])
{
	char s[111]; int tmp,tot=0;
	if (scanf("%s",name)==-1) return false;
	for (int i=0;i<num;i++)
		if (scanf("%d",&tmp)==-1) return false;
		else in[tot++]=tmp;
	gets(s); return true;
}

int solve(int in[])
{
	int ans=0;
	for (int i=3;i<=7;i++)
		ans<<=1,ans|=in[i];
	return ans;
}

void getcode()
{
	char name[10];
	int in[21],fst=1,sx,sy;
	scanf("%d %d",&sx,&sy);
	while (read1(name,sx-sy+1,in))
	{
		if (fst) printf("if (cmd[%d:%d]==`%s) begin\n",sx,sy,name),fst--;
		else printf("\t\t\telse if (cmd[%d:%d]==`%s) begin\n",sx,sy,name);
		printf("\t\t\t\tmemOrALUToReg<=%d; memWriteEnabled<=%d; branchControl<=%d;\n",in[0],in[1],in[2]);
		printf("\t\t\t\tALUOperation<=%s; ALUInputSelect<=2'b%d%d; regWriteDataSelect<=%d;\n",
			aludef[solve(in)],in[8],in[9],in[10]);
		printf("\t\t\t\tregWriteEnabled<=%d; loadWriteMood<=3'b%d%d%d; extendMood<=3'b%d%d;\n"
			,in[11],in[12],in[13],in[14],in[15],in[16]);
		printf("\t\t\t\tselectOfJumpSource<=3'b%d%d; linkWhenJump<=%d; writeToReg31<=%d;\n\t\t\tend\n"
			,in[17],in[18],in[19],in[20]);
	}
	fputs("\t\t\telse begin end",stdout);
	return;
}

void getdefine()
{
	char name[10];
	int in[21],sx,sy;
	scanf("%d %d",&sx,&sy);
	for (;read2(name,sx-sy+1,in);puts(""))
	{
		printf("\t`define %s\t%d'b",name,sx-sy+1);
		for (int i=0;i<sx-sy+1;i++) printf("%d",in[i]);
	}
	return;
}

int main()
{
	freopen("out.txt","w",stdout);
	if (GETDEFINE) getdefine();
	else getcode(); return 0;
}