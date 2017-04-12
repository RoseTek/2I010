#! /bin/bash

if [[ "$#" -ne 1 || ! -f $1 ]]; then
    echo "Usage : $0 file"
    exit 0
fi

while read -r line
do
    set -- $line
    if [[ "$1" == "f" ]]; then

	ls $2 &> /dev/null
	if [[ "$?" -ne 0 ]]; then
    	    touch $2
    	    echo "Le fichier $2 a ete cree"
	else
    	    echo "Un element de nom $2 existe deja"
	fi

    elif [[ "$1" == "d" ]]; then
	ls $2 &> /dev/null
	if [[ "$?" -ne 0 ]]; then
    	    mkdir $2
    	    echo "Le repertoire $2 a ete cree"
	else
    	    echo "Un element de nom $2 existe deja"
	fi

    else
	echo $1 ": type inconnu"
    fi
done < $1
