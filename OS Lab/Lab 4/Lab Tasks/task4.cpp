#include <iostream>
#include <unistd.h>

using namespace std;

bool isPrime(int num) {
   if (num == 1) {
      return false;
   } else {
      double result;
      int divisor = num - 1;
      while (divisor > 1) {
         result = num % divisor;
         if (result == 0) {
            return false;
         } else {
            divisor--;
         }
      }
      return true;
   }
}

int main() {
   int pid;
   int rank = 0;
   int ValAtStart = 0;
   int ValAtEnd = 0;
   int num = 0;
   for (int i = 1; i <= 4; ++i) {
      pid = fork();
      if (pid == 0) {
         rank = i;
         break;
      }
   }

   if (rank == 1) {
      ValAtStart = 2;
      ValAtEnd = 25002;
   } else if (rank == 2) {
      ValAtStart = 25003;
      ValAtEnd = 50002;
   } else if (rank == 3) {
      ValAtStart = 50003;
      ValAtEnd = 75002;
   } else if (rank == 4) {
      ValAtStart = 75003;
      ValAtEnd = 100002;
   } else {
      cout << "Error: invalid rank value" << endl;
      return -1;
   }

   for (int i = ValAtStart; i < ValAtEnd; ++i) {
      if (isPrime(i)) {
         num++;
      }
   }

   cout << "Process " << rank << ": number of prime numbers between " << ValAtStart << " and " << ValAtEnd - 1 << " is " << num << endl;

   return 0;
}
