#! /bin/bash

export fic_pos=$1
export fic_neg=$2
shift
shift

if [[ -d $fic_pos || -d $fic_neg ]]; then
    echo "Repertoire porte le nom $fic_pos ou $fic_neg"
    exit 1
fi

rm $fic_neg
rm $fic_pos

for i in "$@"
do
    ./calcul.sh $i
done
