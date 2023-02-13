#include <iostream>
#include <unistd.h>

using namespace std;

int main() {
   int pid;
   int rank = 0;
   int valAtStart = 0;
   int valAtEnd = 0;
   for (int i = 1; i <= 4; ++i) {
      pid = fork();
      if (pid == 0) {
         rank = i;
         break;
      }
   }

   if (rank == 1) {
      valAtStart = 1;
      valAtEnd = 25;
   } else if (rank == 2) {
      valAtStart = 26;
      valAtEnd = 50;
   } else if (rank == 3) {
      valAtStart = 51;
      valAtEnd = 75;
   } else if (rank == 4) {
      valAtStart = 76;
      valAtEnd = 100;
   } else {
      cout << "Error: invalid rank value" << endl;
      return -1;
   }

   for (int i = valAtStart; i <= valAtEnd; ++i) {
      cout << "Process " << rank << ": " << i << endl;
   }

   return 0;
}
