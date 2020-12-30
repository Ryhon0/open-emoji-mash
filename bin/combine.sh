#!/bin/sh

# Combine 4 images
# Ussage: combine.sh base.png eyes.png mouth.png special.png output.png 

composite $2 $1 - | composite $3 - - | composite $4 - $5
