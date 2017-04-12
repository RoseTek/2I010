#! /bin/bash
# lancement_ecriture.sh

if [ $# -lt 1 ]
then
    echo Il faut au moins un parametre
    exit 1
fi

if [ -f $1 ] ; then
    rm $1
fi
if [ -f $2 ] ; then
    rm $2
fi
if [ -f $3 ] ; then
    rm $3
fi
./ecriture.sh $1 $2 $3 & ./ecriture.sh $1 $2 $3
