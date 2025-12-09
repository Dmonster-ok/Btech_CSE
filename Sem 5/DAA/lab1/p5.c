#include <stdio.h>

int countDigit(int n, int c){
  if(n == 0){
    return c;
  }
  return countDigit(n/10,c+1);
}

void main(){
  int n, c=0;
  scanf("%d",&n);

  // tmp = n;
  // while(tmp != 0){
  //   c++;
  //   tmp /= 10;
  // }
  printf("%d\n",countDigit(n,c));
}