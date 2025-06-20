#include<stdio.h>

#define MAX 100

int Stack[MAX];
int top = -1;

void push(int val){
	if (top == MAX -1){
		printf("Stack Overflow");
		return;
	}
	top += 1;
	Stack[top] = val;
}

int pop(){
	if (top == -1){
		printf("Stack Underflow");
		return 0;
	}
	top--;
}

void display(){
	if (top == -1){
		printf("Stack Underflow");
	}
	
	printf("Stack:\n");
	for(int i = top; i>=0;i--){
		printf("%d\n",Stack[i]);
	}
}

int peep(int idx){
	if (idx < 0 && idx > top)
	{
		printf("\nidx not found\n");
		return -1;	
	}
	printf("peeped: %d\n",Stack[idx]);	
}

int change(int idx,int val){
	if (idx < 0 && idx > top)
	{
		printf("\nidx not found\n");
		return -1;	
	}
	
	int tmp = Stack[idx]; 
	Stack[idx] = val;
	return tmp;
}

void main(){
	push(1);
	push(2);
	push(3);
	push(4);
	push(5);
	display();
	pop();
	pop();
	display();
	peep(1);
	change(2,8);
	display();
}