#!/bin/bash

# Remove all rendered .png files

FILES=$(find . | grep .png)

for F in $FILES
do
    rm $F
done