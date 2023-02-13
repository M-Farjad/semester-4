#include <iostream>
#include <unistd.h>

using namespace std;

int main()
{
    int pid;
    pid = fork();
    if (pid == 0)
    {
        // Child process
        pid = fork();
        if (pid == 0)
        {
            // Grandchild process
            pid = fork();
            if (pid == 0)
            {
                // Great-grandchild process
                cout << "Great-grandchild process" << endl;
            }
            else if (pid > 0)
            {
                // Grandchild process
                cout << "Grandchild process" << endl;
            }
            else
            {
                // Fork error
                cout << "Error: Failed to create grandchild process" << endl;
                return -1;
            }
        }
        else if (pid > 0)
        {
            // Child process
            cout << "Child process" << endl;
        }
        else
        {
            // Fork error
            cout << "Error: Failed to create child process" << endl;
            return -1;
        }
    }
    else if (pid > 0)
    {
        // Parent process
        cout << "Parent process" << endl;
    }
    else
    {
        // Fork error
        cout << "Error: Failed to create parent process" << endl;
        return -1;
    }

    return 0;
}
