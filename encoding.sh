#!/bin/bash

binfile ="$(basename $1).bin"

if [ -e $binfile] |
    then rm $binfile
fi

echo -n "char code[] = \" "

for i in `objdump -d $1 | tr '\t' ' ' | tr ' ' '\n' | egrep '^[0-9a-f]{2}$'` ;
do
    echo -n "\x$1";
    echo -n -e "\\x$i" >> $binfile

done
echo "\";"
