#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main(){
int i;
pid_t cpid = fork();
if (cpid > 0) {
    for (i = 0; i < 10; i++ ) {
        printf("Parent: %d\n", i);
        // sleep(1);
    }
}   else if (cpid == 0) {
    for (i = 0; i > -10; i--) {
        printf("Child: %d\n", i);
        // sleep(1);
    }
} else { /* ERROR! */ }

};
