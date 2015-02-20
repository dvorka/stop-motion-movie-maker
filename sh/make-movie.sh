#!/bin/bash

export FFF=`basename "$PWD"`

rm -rvf temp ../${FFF}.mp4
mkdir temp
cp -vf *.JPG temp

echo MOGRIFY --------------------------------------------------
#mogrify -resize 800x600 temp/*.JPG
mogrify -resize 800x600 temp/*.JPG

echo CONVERT --------------------------------------------------
#convert temp/*.JPG -delay 10 -morph 10 temp/%5d.jpg
convert temp/*.JPG -delay 1 -morph 0 temp/%03d.nomorph.jpg

echo FFMPEG ---------------------------------------------------
#ffmpeg -r 25 -qscale 2 -i temp/%5d.jpg output.mp4
ffmpeg -r 3 -i temp/%03d.nomorph.jpg -qscale 2 ../${FFF}.mp4

# eof
