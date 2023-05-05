#!/bin/bash

cd ~/Desktop
mkdir temp 
cd ./temp
for value in {1..40}
do
    touch "$value.txt"
done
mkdir temp1
mkdir temp2