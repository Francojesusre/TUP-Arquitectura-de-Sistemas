#!/bin/bash

echo Ingrese numeros

while read number
do
    if [[ $number -eq 999 ]]; then
        break
    fi
    echo $number >> numeros
done 

echo quiere ver los numero '(s/n)'
while read quiere_ver_los_numero
do
    echo quiere ver los numero '(s/n)'
    if [[ $quiere_ver_los_numero = s ]]; then
        echo '(O)rden establecido, (A)scendente, (D)escendente'
        while read order
        do
            echo '(O)rden establecido, (A)scendente, (D)escendente'
            if [ $order = O ] || [ $order = A ] || [ $order = D ]; then
                case $order in
                    O) cat numeros ;;
                    A) sort < numeros ;;
                    D) sort -k1,1nr numeros ;;
                esac
                exit 1 
            fi            
        done 
    fi
    if [[ $quiere_ver_los_numero = n ]]; then
        break
    fi
done
rm numeros



# num=0
# until [ $num -eq 999 ]; do
# echo -n "Número: "
# read num
# if [ $num -ne 999 ]; then
# echo $num >> numeros.txt
# fi
# done
# echo -n "¿Quieres ver los números introducidos?(s/n) "
# read res
# if [ $res == "s" -o $res == "S" ]; then
# echo -n "¿Orden estalbecido, ascendente o descentente?(o/a/d) "
# read orden
# case $orden in
# o|O) cat numeros.txt;;
# a|A) cat numeros.txt | sort -n;;
# d|D) cat numeros.txt | sort -n -r;;
# *) echo Opción no válida;;
# esac
# fi
# rm numeros.txt
# echo "Gracias por utilizarnos"