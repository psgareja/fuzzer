section .data
shell db '/bin/sh’ ; db = define byte. We basically
declare a string variable
section .text
global _start ; Syntax requires that decalration. It is
comparable to int main()
_start:
mov eax, 11 ; We store the syscall number in eax
mov ebx, shell ; Address of the shell variable (string /bin/sh) is stored in ebx
mov ecx, 0 int 0x80
syscall
  mov eax,
  mov ebx,
  int 0x80
; ECX can be null
; Interrupt instruction – we issue the
; Next syscall – 1 is number of exit() ; Exit code – return 0
; Issue the syscall with Interrupt 0x80
1 0