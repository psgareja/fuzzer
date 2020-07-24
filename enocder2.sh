#!/bin/bash
enc='x86/bloxor'
if(($#>1))
then 
    enc="$2"
fi

outfile="$(basename $1).enc"
echo "Encoding is ${enc} and out file is $outfile"
echo "Creating binary file $outfile for encoding"

msfencode -b '\x00' -i $1 -t raw -e $enc >> $outfile

echo "Creating c file from binary"
xxd -i $outfile