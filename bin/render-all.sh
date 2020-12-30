#!/bin/bash

# Render all .svg files into .png
# Ussage: render-all.sh

DIR=$(basename $PWD)
if [ "$DIR" == "bin" ];
then
	cd ..
fi

FILES=$(find . | grep .svg)

for F in $FILES
do
	OUT="${F%.svg}.png"
	bin/render.sh "$F" "$OUT" 512
done