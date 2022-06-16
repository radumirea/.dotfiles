#!/bin/bash

sxhkd &                 #macros daemon
udiskie &               #automounter daemon
redshift &              #night light
dunst &	                #osd daemon
autorandr --change 	#change to detected display configuration
synclient TouchpadOff=1	#turn off touchpad
mpd &
[[ -z $(pgrep -xU $UID mpdscribble) ]] && mpdscribble &  #last.fm scribbler

#fix display for some windows
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
wmname LG3D

~/scripts/util/dwm/style.sh       #set visual stuff
xrdb ~/.Xresources       #set colors for apps that need them

exec ~/scripts/util/dwm/start.sh   #WM script
