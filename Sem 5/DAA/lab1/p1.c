#include <stdio.h>
void main(){
	int n, fact = 1,i;
	
	printf("Enter Num: ");
	scanf("%d",&n);
	for(i=n;i>=1;i--){
		fact *= i;
	}
	printf("%d",fact);
}