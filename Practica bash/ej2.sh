#!/bin/bash
numero_parametros=$#
contador=1
while [[ $numero_parametros -ge $contador ]]
do
    echo El parámetro $contador es ${!contador}
    let contador=$contador+1
done

# ---------------------
# OTRA OPCION

contador=1
for value in $*
do
    echo El parámetro $contador es $value
    let contador=$contador+1
done
