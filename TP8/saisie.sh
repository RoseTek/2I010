#! /bin/bash
# saisie

if [[ $# -ne 1 || -d $1 ]] ; then
    echo "Usage : $0 non_directory_str"
    exit 1
fi
echo "Saisie des notes :"
echo -n > $1
while read note ; do
    echo $note >> $1
    if [[ $note -lt 0 ]] ; then
	echo > "$1.saisie.sync"
	exit 0
    fi
done


