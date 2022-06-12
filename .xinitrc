sxhkd &        #macros daemon
udiskie &      #automounter daemon
redshift &     #night light
dunst &	       #osd daemon
autorandr --change 	#change to detected display configuration
synclient TouchpadOff=1	#turn off touchpad
mpd &
[[ -z $(pgrep -xU $UID mpdscribble) ]] && mpdscribble &

#fix for some windows to display properly
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
wmname LG3D

~/scripts/style.sh       #set visual stuff
xrdb ~/.Xresources       #set colors for apps that need them

exec ~/scripts/dwm/start.sh   #WM script
