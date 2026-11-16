#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>

int main() {
    pid_t pid1 = fork();

    if(pid1 < 0) {
        printf("Fork failed\n");
        return 1;
    }
    else if(pid1 == 0) {
        printf("Inside 2nd process\n");
        printf("PID of 2nd process: %d\n", getpid());
    }
    else {
        wait(NULL);

        pid_t pid2 = fork();

        if(pid2 == -1) {
            printf("Fork failed\n");
            return 1;
        }
        else if(pid2 == 0) {
            printf("Inside 3rd process\n");
            printf("PID of 3rd process: %d\n", getpid());
        }
        else {
            wait(NULL);
            printf("Inside 1st process\n");
            printf("PID of 1st process: %d\n", getpid());
        }
    }

    return 0;
}