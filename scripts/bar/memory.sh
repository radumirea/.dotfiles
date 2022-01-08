#!/bin/bash 

#free RAM precentage
printf "%s %s" "" "$(free | grep Mem | awk '{pr=$3/$2*100; printf "%4.1f%", pr;}')"

#CPU usage
printf " %s %s" "" "$(top -bin1 | grep %Cpu | awk '/%Cpu/{ used=100-$8; printf "%4.1f%", used; }')"

