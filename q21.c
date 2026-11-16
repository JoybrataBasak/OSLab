#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include<sys/wait.h>

int main()
{
    pid_t pid;

    pid = fork();

    if (pid < 0)
    {
        printf("Some error occured\n");
        return 1;
    }
    else if (pid == 0)
    {
        printf("This is child process\n");
        printf("Child process's pid is : %d\n", getpid());
        printf("Parent process's pid is : %d\n", getppid());
    }
    else
    {   
        wait(NULL);
        printf("This is Parent process\n");
        printf("Parent process's pid is : %d\n", getpid());
        printf("Child process's pid is : %d\n", pid);
    }
}
