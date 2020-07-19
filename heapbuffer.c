#include <string.h>
#include <stdio.h>
void main(int c, char** argv){
    char* buff=malloc(20);
    strcpy(buff,argv[1]);
    free(buff);
}