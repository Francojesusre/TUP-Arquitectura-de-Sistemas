#!/bin/bash

echo ingrese archivo
read archivo

if [ -e $archivo ]
then
    echo El archivo $archivo existe
    if [[ -f $archivo ]]; then
        echo El archivo no es un directorio
    else
        echo El archivo es un directorio
    fi  
        if [[ -f $archivo ]]; then
            echo $archivo tiene permiso de lectura para el user que corre el script
        fi
        if [[ -w $archivo ]]; then
            echo $archivo tiene permiso de escritura para el user que corre el script
        fi
        if [[ -x $archivo ]]; then
            echo $archivo tiene permiso de ejecución para el user que corre el script
        fi
fi
