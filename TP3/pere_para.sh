#! /bin/bash

export TOTAL=$1
export i
for i in $(seq $1); do
    ./fils_para.sh
done
