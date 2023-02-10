#include <stdio.h>
#include <string.h>

char buffer[10005];
int tot,cnt,now=0x3000,fuckAddr[64],delayTime[64];
const char *fstBuffer="`timescale 1ns/1ps\n\nmodule mips_tb;\n\n\twire [31:0] addr;\n\treg clk,reset,interrupt;\n\treg [31:0] interruptAddress[0:63];\n\tinteger interruptCounter,willInterrupt;\n\n\tmips uut(\n\t\t.clk(clk),.reset(reset),\n\t\t.interrupt(interrupt),\n\t\t.addr(addr)\n\t);\n\n\tinitial begin\n\t\tclk<=0; reset<=1;\n\t\tinterruptCounter<=0; willInterrupt<=0; interrupt<=0;\n\t\t";
const char *midBuffer="\t\t#10; reset<=0;\n\tend\n\talways @(negedge clk) begin\n\t\tif (reset) interrupt<=0;\n\t\telse if (interrupt) begin\n\t\t\tif (interruptCounter==0) interrupt<=0;\n\t\t\telse interruptCounter<=interruptCounter-1;\n\t\tend\n\t\telse if (willInterrupt) begin\n\t\t\tif (willInterrupt==32'b1) begin interrupt<=1; willInterrupt<=0; end\n\t\t\telse willInterrupt<=willInterrupt-1;\n\t\tend";
const char *endBuffer="\t\telse begin end\n\tend\n\n\talways #5 clk<=~clk;\n\nendmodule";

int main()
{
	freopen("main.asm","r",stdin);
	while (gets(buffer))
	{
		if (strchr(buffer,'\t') || strstr(buffer,"nop")) tot++,printf("0x%08x -> %s\n",now-4+(tot<<2),buffer);
		if (strstr(buffer,"0x4180")) now=0x4180,tot=0;
		if (strstr(buffer,"fuck"))
		{
			fuckAddr[cnt]=now-4+(tot<<2);
			delayTime[cnt++]=buffer[strlen(buffer)-1]^48;
		}
	}
	freopen("mips_tb.v","w",stdout);
	printf("%s",fstBuffer);
	for (int i=0;i<cnt;i++)
	{
		printf("interruptAddress[%d]<=32'h%08x;",i,fuckAddr[i]);
		if (i+1!=cnt && i%3==2) putchar('\n'),putchar('\t'),putchar('\t');
		else if (i+1!=cnt) putchar('\t');
	}
	putchar('\n'); puts(midBuffer); for (int i=0;i<cnt;i++)
	printf("\t\telse if (addr==interruptAddress[%d]) begin interruptAddress[%d]<=32'h7f7f7f7f; interruptCounter<=5; willInterrupt<=%d; end\n",
	i,i,delayTime[i]); printf("%s",endBuffer); return 0;
}