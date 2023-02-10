#include <stdio.h>

char msg[]="Hello World!\n";
int count;

int main()
{
    printf("%X\n",msg);
    printf("%X\n",&count);
    printf("%X\n",main);

    return 0;
}
