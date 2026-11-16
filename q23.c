#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>

int main() {
    pid_t pid = fork();

    if(pid < 0) {
        printf("Fork failed\n");
    }
    else if(pid == 0) {
        wait(NULL);

        printf("CHILD PROCESS\n");
        printf("PID : %d\n", getpid());
    }
    else {
        printf("PARENT PROCESS\n");
        printf("PID : %d\n", getpid());

        wait(NULL);

        printf("Child process executed\n");
    }

    return 0;
}