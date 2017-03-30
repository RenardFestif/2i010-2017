#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

int main (int argc, char* argv[]){
  if ((isdigit(argv[1])==0)&&(isdigit(argv[2])==0)){
	int a=atoi(argv[1]);
	int b=atoi(argv[2]);

	int c=a+b;

	printf("la somme des deux paramètre est : %d",c);
      }
      return 0;
}
