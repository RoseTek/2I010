#! /bin/bash
#somme

if [[ $# -ne 1 ]] ; then
    echo "Usage : $0 file"
    exit 1
fi
while [ ! -f "$1.saisie.sync" ] ; do
    sleep 1
done
rm -f "$1.saisie.sync"
if [[ ! -f $1 ]] ; then
    echo "Error : $1 not file"
    exit 1
fi
cpt=0
sum=0
while read note ; do
    if [[ $note -lt 0 ]] ; then
	echo "$cpt $sum" > $1
	echo > "$1.somme.sync"	
	exit 0
    fi
    sum=$((sum+note))
    cpt=$((cpt+1))
done < $1


