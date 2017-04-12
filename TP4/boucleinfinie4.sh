#! /bin/bash
# boucleinfinie4.sh

echo Je suis le processus $$
trap "echo $$ a recu un SIGINT ; exit 0" SIGINT
trap "echo $$ a recu un SIGQUIT ; exit 0" SIGQUIT
trap "echo $$ a recu un SIGTERM ; exit 0" SIGTERM

i=0
while [ true ]
do
 echo $i
 i=`expr $i + 1`
 sleep 1
done
