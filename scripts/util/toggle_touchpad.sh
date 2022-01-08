#!/bin/bash

off=`synclient | sed -n "s/^.*TouchpadOff\s*=\s*\([01]\)/\1/p"`
if [ "$off" = 0 ]; then
	synclient TouchpadOff=1
else
	synclient TouchpadOff=0
fi
