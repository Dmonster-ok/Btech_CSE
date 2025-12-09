// try to convert this into the recursion

#include <stdio.h>

int factorial(int n) {
  if(n == 1 || n == 0){
    return 1;
  }
  return n * factorial(n-1);
}

void main() {
    int n;
    scanf("%d",&n);
    printf("%d\n",factorial(n));
}
