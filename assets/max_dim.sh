#!/bin/bash
max_x=`for i in "$@"; do file "$i"; done | grep -Eo '[0-9]+ x [0-9]+' | cut -f1 -d' ' | sort -n | tail -n 1`
max_y=`for i in "$@"; do file "$i"; done | grep -Eo '[0-9]+ x [0-9]+' | cut -f3 -d' ' | sort -n | tail -n 1`
echo $max_x $max_y
