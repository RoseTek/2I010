#! /bin/bash
# ecrivain => producteur

if [[ $# -le 1 || -d $1 ]] ; then
    echo "Usage : $0 non_directory_str <params ...>"
    exit 1
fi

file=$1
shift
echo -n > $file
for val in "$@" ; do
    while [ -f $file.sync ] ; do
	sleep 1
    done
    echo $val >> $file
    touch $file.sync
done
echo fin >> $file
touch $file.sync
