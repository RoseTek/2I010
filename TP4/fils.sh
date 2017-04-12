#! /bin/bash
#fils

total=$((total+1))

if [ $# -ne 1 ]; then
   exit 1
fi

var=$(./alea.sh)

echo "Je suis le fils $1 et je dois creer $var petits fils"

for i in $(seq 1 "$var")
do
    source ./petit_fils.sh $1.$i
done
