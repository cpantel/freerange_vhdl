#include <stdio.h>

int main() {
   char A,B,C,D = 0;
   for (A = 0; A< 2; ++A) {
      for (B = 0; B< 2; ++B) {
         for (C = 0; C< 2; ++C) {
            for (D = 0; D< 2; ++D) {
               printf("%d %d %d %d   %d\n", A,B,C,D, (!A || B) && ( !B || C || !D) && ( !A || D));
            }
         }
      }
   }
}


