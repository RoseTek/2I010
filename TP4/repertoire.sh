#! /bin/bash
# repertoire.sh

count=0

for rep in "$@"; do
    if [ ! -d "$rep" ] ; then
	count=$((count+1))
    fi
done

exit $count;
