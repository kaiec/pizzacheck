#!/bin/bash
x=$1
y=$2
shift 2
for i in "$@"; do
	echo $i
	convert $i -background transparent -gravity center -extent ${x}x${y} $i.extended.png
done
