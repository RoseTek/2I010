#! /bin/bash

if [ "$#" -eq 0 ]; then
    pwd
    exit 0
fi

while (( "$#" )); do
    if [[ -d $1 ]]; then
	echo $1 "est un repertoire"
    elif [[ -f $1 ]]; then
	echo $1 "est un fichier"
    else
	echo $1 "n est ni un repertoire ni un fichier"
    fi
    shift
done
