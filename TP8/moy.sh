#! /bin/bash
#moy

if [[ $# -ne 1 ]] ; then
    echo "Usage : $0 file"
    exit 1
fi
while [ ! -f "$1.somme.sync" ]; do
    sleep 1
done
rm -f "$1.somme.sync"
if [[ ! -f $1 ]] ; then
    echo "Error : $1 not file"
    exit 1
fi
read nb sum < $1
moy=$((sum/nb))
if [[ $moy -gt 10 ]] ; then
    echo "recu $moy"
else
    echo "recale $moy"
fi
