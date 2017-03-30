#include <stdio.h>
#include <stdlib.h>

int main ( int argc, char* argv[]){
  int len = argc - 1;
  int i;

  printf("%s\n",argv[0]); 
  for (i=1;i<=len;i++){
    printf("%s\n",argv[i]);
  }
  printf("Nombre de Paramètre : %d\n",len);
  return 0;
}
