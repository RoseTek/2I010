#! /bin/bash

./repertoire.sh $@

result=$?

if [ $result -eq 0 ]; then
    echo "Tous les parametres sont des repertoires"
elif [ $result -eq 1 ]; then
    echo "1 parametre ne correspond pas a un repertoire"
else
    echo "$result parametres ne correspondent pas a des repertoires"
fi
