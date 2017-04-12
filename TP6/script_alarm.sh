#! /bin/bash
# script_alarm.sh

trap "echo Je viens de recevoir SIGALRM" SIGALRM

./alarm.sh $$ 3 1 &

i=0
while [ "$i" -ne 42 ] ; do
    echo -n
done
