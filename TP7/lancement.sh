#! /bin/bash
#lancement.sh

mkdir -p /tmp/$USER

echo 5 > /tmp/$USER/nb_paniers
echo 3 > /tmp/$USER/nb_cabines
for i in {1..7} ; do
    ./usager.sh &
done
wait
