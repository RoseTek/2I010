#! /bin/bash

if [[ "$#" -ne 1 || ! -f $1 ]]; then
    echo "Usage : $0 file"
    exit 0
fi

while read -r line
do
    value="$line"

    ls $value &> /dev/null
    if [[ "$?" -ne 0 ]]; then
	mkdir $value
	echo "Le repertoire $value a ete cree"
    else
	echo "Un element de nom $value existe deja"
    fi
done < $1
