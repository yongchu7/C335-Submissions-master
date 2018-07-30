#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct CELL * LIST;
LIST stack;
 
struct CELL {
   int val;
   LIST next;
   };
 
 int pop(){
  LIST c = stack;
  if(c) {
  	stack=stack->next;
  	int x = c->val;
  	free(c);
  	return x;
	}
  else {
  	printf("stack is empty\n");
  	exit(1);
	}
 }
 
void push(int val) {
   LIST c = (LIST) malloc(sizeof(struct CELL));
   if (c) {
      c->val = val;
  	  c->next = stack;
      stack = c;
   } else {
	   exit(1); 
   }
 }
 

 
int main(){
	char input[100];
 	int x,y;
 	stack =NULL;
 	LIST Temp;
    while(*input !=EOF && *input != 'q'){
		scanf("%s",input);
		if(strcmp(input, "0")==0 || atoi(input)!=0) push(atoi(input));
		else{
			switch(*input){
				
				case 'p': 
					if(stack) printf("%d\n", stack->val);
					else printf("dc: stack empty\n");
					break;
					
				case 'f':	
					Temp=stack;
					while(Temp){
						printf("%d\n", Temp->val );
						Temp=Temp->next;
					}
					break;
					
				case '+': 
					if(stack && stack->next){
						x= pop();
						y= pop();
						push(x+y);}
					else{
						printf("dc: stack empty\n");
					}
					break;
					
				case '-': 
					if(stack && stack->next){
						x= pop();
						y= pop();
						push(y-x);}
					else{
						printf("dc: stack empty\n");
					}
					break;
					
				case '*':  
					if(stack && stack->next){
						x= pop();
						y= pop();
						push(y*x);}
					else{
						printf("dc: stack empty\n");
					}
					break;
					
				case '/': 
					if(stack && stack->next){
						x= pop();
						y= pop();
						push(y/x);}
					else{
						printf("dc: stack empty\n");
					}
					break;

				case 'c': 
					stack = NULL;
					break;
					
				case 'q':
					break;
					
				default:
					printf("dc: not identify");
					break;
			}
		}
 	}
	free(stack);
 	return 0;
 }

 