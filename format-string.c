#include <stdio.h>
#include <stdlib.h>

int vulnerable(char* param){
    char buff[256];
    strncpy(buff,param,sizeof(buff)-1);
    printf(buff);
    return 42;


}
int main(int argc,char *argv[]){
    if(argc>1)
        vulnerable(argv[1]);

    return 0;
    

}