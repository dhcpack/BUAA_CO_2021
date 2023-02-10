#include <stdio.h>
#include <stdlib.h>

int sav[1024],tot;
int beq,bgez,bgtz,blez,bltz,bne,j,jal,ri;

inline int fuck(int code)
{
	if ((code&0xfc000000)==0x10000000/*beq*/) code&=0xffff0000,code|=0x7fff,beq++;
	else if ((code&0xfc000000)==0x04000000 && (code&0x001f0000)==0x00010000/*bgez*/) code&=0xffff0000,code|=0x7fff,bgez++;
	else if ((code&0xfc000000)==0x1c000000/*bgtz*/) code&=0xffff0000,code|=0x7fff,bgtz++;
	else if ((code&0xfc000000)==0x18000000/*blez*/) code&=0xffff0000,code|=0x7fff,blez++;
	else if ((code&0xfc000000)==0x04000000 && (code&0x001f0000)==0x00000000/*bltz*/) code&=0xffff0000,code|=0x7fff,bltz++;
	else if ((code&0xfc000000)==0x14000000/*bne*/) code&=0xffff0000,code|=0x7fff,bne++;
	else if ((code&0xfc000000)==0x08000000/*j*/) code&=0xffff0000,code|=0x7fff,j++;
	else if ((code&0xfc000000)==0x0c000000/*jal*/) code&=0xffff0000,code|=0x7fff,jal++;
	else if (code==0x70000021/*ri*/) code=0xffffffff,ri++;
	return code;
}

int main()
{
	system("java -jar mars.jar a nc mc CompactDataAtZero dump .text HexText code.txt main.asm");
	system("java -jar mars.jar a nc mc CompactDataAtZero dump 0x00004180-0x00005180 HexText code_handler.txt main.asm");
	freopen("code.txt","r",stdin);
	for (unsigned int code;~scanf("%x",&code);sav[tot++]=fuck(code));
	freopen("code.txt","w",stdout);
	for (int i=0;i<tot;i++) printf("%08x\n",sav[i]);
	freopen("CON","w",stdout);
	printf("fuck beq tot is %d\n",beq);
	printf("fuck bgez tot is %d\n",bgez);
	printf("fuck bgtz tot is %d\n",bgtz);
	printf("fuck blez tot is %d\n",blez);
	printf("fuck bltz tot is %d\n",bltz);
	printf("fuck bne tot is %d\n",bne);
	printf("fuck j tot is %d\n",j);
	printf("fuck jal tot is %d\n",jal);
	printf("fuck ri tot is %d\n",ri);
	return 0;
}