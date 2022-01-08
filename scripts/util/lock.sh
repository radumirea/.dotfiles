#/bin/bash

#takes screenshot
scrot -z /tmp/screen.png

#adds blurr
convert /tmp/screen.png -scale 5% -scale 2000% /tmp/screen.png

images=("rainbow.png" "bear.png" "pepe.png" "angel_isaac.png")
images_bpad=(5 80 5 300)
images_rpad=(50 0 50 50)
image_idx=$((RANDOM % ${#images[@]}))

#overlay image
image=${images[$image_idx]}

#overlay positions
dimensions=$(xdpyinfo | grep dimension | awk '{print $2}')
height=$(echo $dimensions | awk -Fx '{print $2}')
width=$(echo $dimensions | awk -Fx '{print $1}')
image_width=$(file ~/scripts/resources/lock/$image | awk '{print $5}')
image_height=$(file ~/scripts/resources/lock/$image | awk '{print $7}' | sed 's/.$//')
width=$((width - image_width - ${images_rpad[$image_idx]}))
height=$((height - image_height - ${images_bpad[$image_idx]}))

#overlays image
convert /tmp/screen.png ~/scripts/resources/lock/$image -geometry +$width+$height -composite /tmp/screen.png
i3lock -u -i /tmp/screen.png
rm /tmp/screen.png
