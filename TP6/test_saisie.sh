#! /bin/bash
# test_saisie.sh

./saisie_val.sh
val1=$?
val2=42
while [ $val2 -gt $val1 ] ; do
    ./saisie_val.sh
    val2=$?
done

echo $val1 $val2
