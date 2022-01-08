#!/bin/bash

pactl set-sink-volume 0 $1

volume=`pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'`
icon=""
if [[ -z `pactl list sinks | grep "Mute: no"` ]]; then
	icon="audio-volume-muted"		
else
	icon="audio-volume-high"
fi

llength=`expr $volume / 5`
if [ "$llength" -gt 18 ]; then
	llength=18
fi
echo $llength
line=""
for (( i=0; i<$llength; i++))
do
	line="▊${line}"; 
done

ID=1
dunstify "$volume  $line" -r $ID -i $icon 
