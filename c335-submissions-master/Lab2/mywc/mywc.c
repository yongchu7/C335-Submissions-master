#Yongtao Chu 
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

int main(){
	int totchar = 0;
	int totword = 0;
	int totline = 0;
	int boolean;
	
	int c;
	while ((c = getchar()) != EOF){
		totchar++;
		if (isspace(c) && !isspace(getchar())){
			totword++;
		}
		if (c == '\n' ||c == ''|| c == '\t'||c == '\r'||c == '\n'||c == '\f' ||c =='\v'){ #list all exceptions 
			totline++;	
		}
	}
	printf("%3d %3d %3d\n",totline,totword,totchar);
	return 0;
}