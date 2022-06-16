#!/bin/bash

xbacklight $1 $2

light=`xbacklight`
light=${light%.*}

llength=`expr $light / 5`
if [ "$llength" -gt 20 ]; then
	llength=20
fi
echo $llength
line=""
for (( i=0; i<$llength; i++))
do
	line="▊${line}"; 
done

ID=2
dunstify "$line" -r $ID -i "xfpm-brightness-lcd" 
