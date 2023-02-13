#include <iostream>
#include <unistd.h>
#include <sys/types.h>

using namespace std;
int main() {
  for (int i = 0; i < 3; i++)
{
fork();
}
cout << "Hello from the process " << getpid() << endl;

  return 0;
}
