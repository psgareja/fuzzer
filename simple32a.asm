global _start
section .text
_start:
    mov eax,4
    mov ebx,1
    mov ecx,message
    mov edx,len
    syscall

    mov eax,1
    xor ebx.ebx
   syscall

message:
    db "Hello, Reverser!",10
len: equ $ - message