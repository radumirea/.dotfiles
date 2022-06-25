#!/bin/bash

sxhkd &                 #macros daemon
udiskie &               #automounter daemon
redshift &              #night light
dunst &	                #osd daemon
#autorandr --change 	#change to detected display configuration
~/scripts/resources/screen/default.sh #set scrren layout
synclient TouchpadOff=1	#turn off touchpad
mpd &
[[ -z $(pgrep -xU $UID mpdscribble) ]] && mpdscribble &  #last.fm scribbler

#fix display for some windows
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
wmname LG3D

~/scripts/util/dwm/style.sh       #set visual stuff
xrdb ~/.Xresources       #set colors for apps that need them

#reload config files on change
echo ~/.Xresources | entr -p xrdb ~/.Xresources & &>> ~/files/logs/entr.log
echo ~/.bashrc | entr -p ~/scripts/util/entr/reload_bash.sh & &>> ~/files/logs/entr.log
ls ~/.config/bash/* | entr -p ~/scripts/util/entr/reload_bash.sh & &>> ~/files/logs/entr.log
#add specific files and directories to the dotfiles repo when changed
cat ~/scripts/resources/entr/listen | xargs -I@ sh -c 'find @' | entr -p config add /_ & &>> ~/files/logs/entr.log

exec ~/scripts/util/dwm/start.sh   #WM script
