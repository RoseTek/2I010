#! /bin/bash
# alarm.sh

if [[ $# -ne 3 ]] ; then
    echo "Usage : $0 pid nb delay"
    exit 1
fi

i=0
while [ "$i" -lt $2 ] ; do
    kill -SIGALRM $1
    sleep "$3"
    i=$(($i+1))
done
