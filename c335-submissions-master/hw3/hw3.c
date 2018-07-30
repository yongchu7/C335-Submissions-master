#include <stdio.h>


int main(){
	
	printf(".text\n.syntax unified\n.thumb\n");
	char *regnames[] = {"r0", "r1", "r2","r3","r4","r5","r6","r7","pc","lr","sp"};
	char *opname[]   = {"ands", "eors", "lsls","lsrs","asrs","adcs","sbcs","rors","tst","rsbs","cmp","cmn","orrs","muls","bics","mvns"};
	int inst,check;
	int opc,rn,rm,rd,rdn;
	char *oprname[] ={"adds","subs"};
	while (scanf("%x", &inst) == 1){
		check = inst >>10;
		switch(check){
			case 6:
				opc = inst >>9 &1;
				rd = inst & 7;
				rn = inst >> 3 & 7;
				rm = inst >>6 & 7;
				printf("\t%s %s,%s,%s", oprname[opc], regnames[rd],regnames[rn],regnames[rm]);
				break;

			case 16:
				opc= inst >> 6 & 15;
				rdn = inst >> 3 & 7;
				rm = inst & 7;
				printf("\t%s %s,%s", opname[opc],regnames[rm],regnames[rdn]);
				break;
			default:
				printf(".hword %.4x\n",inst);
				break;
			}

	}

}