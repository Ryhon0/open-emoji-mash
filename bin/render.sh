#!/bin/bash

# Render a SVG with a specified height
# Ussage: render.sh image.svg image.png 512

SVG=$1
OUT=$2
HEIGHT=$3

echo Rendering $SVG to $OUT at "$HEIGHT"px
inkscape  $SVG -h $HEIGHT -o $OUT &> /dev/null