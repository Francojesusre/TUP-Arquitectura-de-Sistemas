#!/bin/bash

cd ~/Desktop/temp


for file in 3*.txt
do
    base=$(basename "$file" .txt)
    mv -n "$file" "$base.md"
done
