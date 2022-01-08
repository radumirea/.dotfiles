#!/bin/bash

#sets up background
feh --bg-scale /home/radu/media/pictures/background/art1.png

#sets up window transparency
compton -I 1 -O 1 -D 1 &
