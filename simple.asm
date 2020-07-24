    global start
    section .text

start:
    mov rax,1
    mov rdi,1
    mov rsi,message
    mov rdx,len

    mov eax,60
    xor rdi,rdi
    syscall

message:
    db  "hello, reverse!",10

len:    equ $ - message
