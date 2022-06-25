#!/bin/bash

sxhkd &                 #macros daemon
udiskie &               #automounter daemon
redshift &              #night light
dunst &	                #osd daemon
mpd &                   #music player daemon
~/scripts/resources/screen/default.sh #set screen layout
synclient TouchpadOff=1	#turn off touchpad
[[ -z $(pgrep -xU $UID mpdscribble) ]] && mpdscribble &  #last.fm scribbler

#fix display for some windows
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
wmname LG3D

#visual settings
~/scripts/util/dwm/style.sh
xrdb ~/.Xresources

#reload config files on change
echo ~/.Xresources | entr -p xrdb ~/.Xresources & &>> ~/files/logs/entr.log
echo ~/.bashrc | entr -p ~/scripts/util/entr/reload_bash.sh & &>> ~/files/logs/entr.log
ls ~/.config/bash/* | entr -p ~/scripts/util/entr/reload_bash.sh & &>> ~/files/logs/entr.log

exec ~/scripts/util/dwm/start.sh   #WM script
