#!/bin/bash

parametro1=$1
parametro2=$2

if [[ $# -eq 2 ]]; then
    echo "suma $(($parametro1+$parametro2)); resta $(($parametro1-$parametro2)); division $(($parametro1/$parametro2)); multiplicacion $(($parametro1*$parametro2))"
    exit 0
elif [[ $# -eq 0 ]]; then 
    echo  Quiere introducirl los pasametros ahora s/n
    while read line
    do
        if [ $line = s ] || [ $line = n ]; then
            if [[ $line = s ]]; then
                echo 'ingrese parametro 1'
                read parametro1
                echo Quiere introducir el otro s/n
                while read line2
                do
                    if [ $line2 = s ] || [ $line2 = n ]; then
                        if [[ $line2 = s ]]; then
                            echo 'ingrese parametro 2'
                            read parametro2
                            echo "suma $(($parametro1+$parametro2)); resta $(($parametro1-$parametro2)); division $(($parametro1/$parametro2)); multiplicacion $(($parametro1*$parametro2))"
                            exit 0
                        else
                            exit 0
                        fi
                    fi
                done
            else
                exit 0
            fi
        fi
    done
fi
if [[ $# -eq 1 ]]; then
    echo Quiere introducir el otro s/n
    while read line
    do
        if [ $line = s ] || [ $line = n ]; then
            if [[ $line = s ]]; then
                echo 'ingrese parametro 2'
                read parametro2
                echo "suma $(($parametro1+$parametro2)); resta $(($parametro1-$parametro2)); division $(($parametro1/$parametro2)); multiplicacion $(($parametro1*$parametro2))"
                exit 0
            else
                exit 0
            fi
        fi
    done
fi
# echo 'Ingrese parametro 1 numerico'
# read parametro1

# echo 'Ingrese parametro 2 numerico'
# read parametro2