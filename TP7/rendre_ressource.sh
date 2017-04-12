#! /bin/bash
# rendre_ressource.sh

if [ $# -lt 1 ]
then
    echo Il faut au moins un parametre
    exit 1
fi
ressource=$1

lockfile -1 "$ressource.lock"
read val < $ressource
echo $((val+1)) > $ressource
rm -f "$ressource.lock"
