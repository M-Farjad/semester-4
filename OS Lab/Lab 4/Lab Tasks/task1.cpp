#include <iostream>
#include <unistd.h>
#include <sys/types.h>

using namespace std;
int main() {
  pid_t pid;

  pid = fork();
  if (pid == -1) {
        perror("fork");
        return 1;
  } else if (pid == 0) {
        cout << "Child process:" <<endl;
        cout << "pid: " << getpid() << endl;
  } else {
        cout << "Parent process:" <<endl;
        cout << "pid: " << getpid() <<endl;
  }
  return 0;
}
