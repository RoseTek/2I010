#! /bin/bash
#pere

export total=1

if [ $# -ne 1 ]; then
   exit 1
fi

for i in $(seq 1 "$1")
do
    source ./fils.sh $i
done

echo "$total processus ont ete crees"
