#! /bin/bash

total=$((total+1))

if [ $# -ne 1 ]; then
   exit 1
fi

echo "Je suis le processus $1"
