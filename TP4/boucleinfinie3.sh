#! /bin/bash
# boucleinfinie3.sh

echo Je suis le processus $$
trap "echo $$ a recu un Ctrl+c ; exit 0" SIGINT

i=0
while [ true ]
do
 echo $i
 i=`expr $i + 1`
 sleep 1
done
