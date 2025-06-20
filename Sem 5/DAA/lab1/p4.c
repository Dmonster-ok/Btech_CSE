#include <stdio.h>

int pow(int base,int power){
  if (power == 0){
    return 1;
  }
  return base * pow(base,power - 1);
}

void main() {
  int base,power,i,ans = 1;
  scanf("%d",&base);
  scanf("%d",&power);

  // for(i=0;i<power;i++){
  //   ans *= base;
  // }

  // printf("%d",ans);
  printf("%d",pow(base,power));
}