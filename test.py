import subprocess

param="buff"

for i in range(0xa1,0xff):
    param+=chr(i)

subprocess.call(param)
