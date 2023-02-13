#include <iostream>
#include <unistd.h>
#include <sys/wait.h>

using namespace std;

int main()
{
    int pid = fork();
    if (pid == 0)
    {
        // This is the child process
        char *args[] = {"./test", NULL};
        execvp(args[0], args);
    }
    else if (pid > 0)
    {
        // This is the parent process
        int status;
        wait(&status);
        if (status == -1)
        {
            cout << "Process creation unsuccessful" << endl;
            exit(-1);
        }
    }
    else
    {
        // fork failed
        cout << "fork failed" << endl;
        exit(-1);
    }

    return 0;
}