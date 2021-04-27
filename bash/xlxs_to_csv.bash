#!/bin/bash

if [ -z "$1" ]
then
    echo "required directory path argument not supplied"
    exit 1;
fi

find "$1" | grep "xlsx" > files.txt

mapfile -t <  files.txt

for line in "${MAPFILE[@]}"; do
    in2csv -f xlsx "$line" > "$line.csv"
    echo $line
done
