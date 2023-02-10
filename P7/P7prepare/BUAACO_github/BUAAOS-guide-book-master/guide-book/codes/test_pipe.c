#include <stdlib.h>
#include <unistd.h>

int fildes[2];
/* buf size is 100 */
char buf[100];
int status;

int main(){

    status = pipe(fildes);

    if (status == -1 ) {
        /* an error occurred */
        printf("error\n");
    }


    switch (fork()) {
    case -1: /* Handle error */
        break;


    case 0:  /* Child - reads from pipe */
        close(fildes[1]);                       /* Write end is unused */
        read(fildes[0], buf, 100);              /* Get data from pipe */
        printf("child-process read:%s",buf);    /* Print the data */
        close(fildes[0]);                       /* Finished with pipe */
        exit(EXIT_SUCCESS);


    default:  /* Parent - writes to pipe */
        close(fildes[0]);                       /* Read end is unused */
        write(fildes[1], "Hello world\n", 12);  /* Write data on pipe */
        close(fildes[1]);                       /* Child will see EOF */
        exit(EXIT_SUCCESS);
    }
}