#! /bin/bash

if [ $# -ne 1 ] ; then
    echo "Usage : $0 int"
    exit 1
fi

gcc -o add add.c
i=0
while [ "$i" -ne "$1" ] ; do
    echo $i
    i=$(./add $i 1)
done

echo $i
