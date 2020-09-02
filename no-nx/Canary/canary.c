#include<stdio.h>
#include<string.h>
#include<unistd.h>
#include<stdlib.h>

void getshell(void){
        setuid(0);
        system("/bin/sh");
}
void init(){
        setbuf(stdin,NULL);
        setbuf(stdout,NULL);
        setbuf(stderr,NULL);
}
void vuln(){
        char buf[100];
        for(int i=0;i<2;i++){
                read(0,buf,0x200);
                printf(buf);
        }
}
int main(void){
        init();
        puts("Hello Hacker!");
        vuln();
        return 0;
}

