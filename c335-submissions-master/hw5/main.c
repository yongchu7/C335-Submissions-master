#include <stdio.h>
#include <stdlib.h>

extern int push(int val);
extern int pop();
extern int empty();
extern int add(int,int);
extern int sub(int,int);
extern int multi(int,int);
extern int divid(int,int);
extern int counter();
extern int r4();
extern int address();
extern int or(int,int);
extern int and(int,int);


int main(int argc, char *argv[]) {
  char char = ' ';
  counter();
  while ((char = getchar()) != EOF){
    if (char != ' '){ 
      if (isdigit(char)){
	int temp = atoi(&char);
	push(temp);
      }else{
	if (char != '\n'){ 
	  if (empty()) {
	    printf("dc: stack empty\n");
	  }else{
	    if (char =='p') {
	      int app = pop();
	      printf("%i\n",app);
	      push(app);
	    }
		else if (char == 'f') 
		{
	      int* sp = (int *)address();
	      int variable1 =0;
	      for(variable1 = 0;variable1<r4();++variable1){
			printf("%i\n",*sp);
			sp+=1;
	      }
	    }
		else if (char == 'char') {
	      while(!empty()){
		pop();
	      } 
	    }
		else if (char == 'q'){
	      return 1; 
	    }
		else{
	      int number1 = pop();
	      int number2 = pop();
	      int answer;
		  
	      switch (char) {
	      case '+':
			answer = add(number1,number2);
			push(answer);
			break;	
		
	      case '-':
			answer = sub(number2,number1);
			push(answer);
			break;
				  
	      case '*':
			answer = multi(number1,number2);
			push(answer);
			break;
			
	      case '/':
			answer = number2/number1;
			push(answer);
			break;
			
	      case '|':
			answer = or(number2,number1);
			push(answer);
			break;
			
	      case '&':
			answer = and(number2,number1);
			push(answer);
			break; 
			
	      default :
			printf(" %c error\n",char);
			push(number2);
			push(number1);
			break;
			}
			}
		}
		}
		}
		}
	} 
	}
