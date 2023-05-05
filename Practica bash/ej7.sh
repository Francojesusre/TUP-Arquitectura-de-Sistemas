#!/bin/bash

echo 'Ingrese cadena 1'

read txt1

echo 'Ingrese cadena 2'

read txt2

if [ -z $txt1 ] || [ -z $txt2  ]; then
    echo hay cadena vacia
fi
if [[ $txt1 = $txt2 ]]; then
    echo las cadenas son iguales
else
    echo las cadenas son distintas
fi