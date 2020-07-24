    global _start
    section .text

_start:
    xor eax,eax
    mov al,4
    xor ebx,ebx
    mov bl,1
    jmp short call_shellcode

return_shellcode:
    pop ecx
    xor edx,edx
    mov dl,17
    int 0x80

    xor eax,eax
    mov al,1
    xor ebx,ebx
    int 0x80

call_shellcode:
    call return_shellcode
    db "Hello, Reverser!",10

len: equ $ - message

