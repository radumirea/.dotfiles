#!/bin/bash

if [ `cat /sys/class/net/e*/operstate 2>/dev/null` = "up" ]; then
    printf "%s" ""
elif [ `cat /sys/class/net/w*/operstate 2>/dev/null` = "up" ]; then
    perc=$(iwconfig 2> /dev/null | grep -oh [0-9]*/[0-9][0-9] | cut -d/ -f1)
    if [ "$perc" -lt 10 ]; then
        perc="  ${perc}";
    elif [ "$perc" -lt 70 ]; then
	perc=" ${perc}";
    fi
    printf "%s%s%%" "" "$perc"
else
    printf "%s" ""
fi
