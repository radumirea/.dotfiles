#!/bin/bash

#sets up background
#randback
feh --bg-fill ~/media/pictures/background/plain.jpg

#sets up window transparency
picom -I 1 -O 1 -D 1 &
