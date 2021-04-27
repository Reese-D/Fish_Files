#!/bin/bash

if [ -z "$1" ]
then
    echo "required directory path argument not supplied"
    exit 1;
fi

for i in `find $1 -type d`;do rename 's/ /_/g' $i/*;done
