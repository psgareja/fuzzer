    global _start
    section .text

_start:
    xor rax, rax
    mov al,1
    xor rdi,rdi
    inc rdi
    jmp short call_shellcode

return_shellcode:
    pop rsi
    xor rdx,rdx
    mov dl,17
    syscall

    xor rax,rax
    mov al,60
    xor rdi,rdi
    syscall

call_shellcode:
    call return_shellcode
    db "hello,Reverser!",10

    
