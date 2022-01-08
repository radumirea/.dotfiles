#!/bin/bash

charge=`cat /sys/class/power_supply/BAT0/capacity`
stat=`cat /sys/class/power_supply/BAT0/status`

if [ "$stat" != "Discharging" ]; then
	icon=""
elif [ "$charge" -ge 80 ]; then 
	icon=""
elif [ "$charge" -ge 40 ]; then
	icon=""
elif [ "$charge" -ge 15 ]; then
	icon=""
else
	icon=""
fi

printf "%s %s%%" $icon $charge

