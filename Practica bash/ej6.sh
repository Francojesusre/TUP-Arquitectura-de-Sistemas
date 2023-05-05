#!/bin/bash


for value in {2..0..-1}
do
    echo 2+2?
    read respuesta
    if [[ $respuesta -eq 4 ]]; then
        echo respuesta correscto    
        break
    else
    echo te quedan $value intentos
    fi 
done
