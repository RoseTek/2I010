#! /bin/bash

#en bash -a = and
#1-31
while read input
do
    if [ $input -ge 1 -a $input -le 31 ]; then
	var1=$input
	break
    else
	echo "Entrez un nombre entre 1 et 31"
    fi
done <&0

trap "echo SIGINT intercepté" SIGINT

#1-12
while read input
do
    if [ $input -ge 1 -a $input -le 12 ]; then
	var2=$input
	break
    else
	echo "Entrez un nombre entre 1 et 12"
    fi
done <&0

trap - SIGINT

#1960-1980
while read input
do
    if [ $input -ge 1960 -a $input -le 1980 ]; then
	var3=$input
	break
    else
	echo "Entrez un nombre entre 1960 et 1980"
    fi
done <&0

echo "User input : $var1-$var2-$var3"
