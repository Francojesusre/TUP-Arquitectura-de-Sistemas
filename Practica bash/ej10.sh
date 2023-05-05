#!/bin/bash

cd ~/Desktop/temp

archivo1=""
archivo2=""

for value in *.txt  
do
    if [ "$value" = "25.txt" ]; then
        archivo1="$value"
    fi
    if [ "$value" = "29.txt" ]; then
        archivo2="$value"
    fi
done

if [ -n "$archivo1" ] && [ -n "$archivo2" ]; then
    echo "Comprimiendo archivos $archivo1 y $archivo2 con gzip"
    gzip "$archivo1" "$archivo2"
else
    echo "No se encontraron los archivos 25.txt y 29.txt"
fi
