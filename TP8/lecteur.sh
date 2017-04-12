#! /bin/bash
# lecteur => consommateur

if [[ $# -ne 1 || -d $1 ]] ; then
    echo "Usage : $0 file"
    exit 1
fi

file=$1
touch $file
while [ 1 -eq 1 ] ; do
    if [ ! -f $file.sync ] ; then
	sleep 1
    else
	read line
	if [ "$line" = "fin" ] ; then
	    echo "fin de lecture"
	    rm -f $file
	    rm -f $file.sync
	    exit 0
	fi
	echo "mot lu $line"
	rm -f $file.sync
    fi
done < $file
exit 1
