#!/bin/bash

sxhkd &                 #macros daemon
udiskie &               #automounter daemon
redshift &              #night light
dunst &	                #osd daemon
mpd &                   #music player daemon
autorandr --change      #set screen layout
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
hook_file ~/.Xresources xrdb ~/.Xresources &
hook_file ~/.bashrc ~/scripts/util/inotify/reload_bash.sh &
hook_file ~/.bash_profile ~/scripts/util/inotify/reload_bash.sh &
hook_dir ~/.config/bash/ ~/scripts/util/inotify/reload_bash.sh &

exec ~/scripts/util/dwm/start.sh   #WM script
