let initialWidth=14720
w=$(echo "scale=2; $initialWidth/$1" | bc)
h=$(echo "scale=2; ($w)/1.6" | bc)

echo "$w $h"

width=$(echo "$w/1" | bc)
height=$(echo "$h/1" | bc)

echo "$width $height"

xsetwacom --set "Wacom Bamboo 16FG 4x5 Finger touch" Touch off
xsetwacom --set "Wacom Bamboo 16FG 4x5 Pad pad" MapToOutput 2560x1080+0+1080
xsetwacom --set "Wacom Bamboo 16FG 4x5 Pen stylus" MapToOutput 2560x1080+0+1080
xsetwacom --set "Wacom Bamboo 16FG 4x5 Pen eraser" MapToOutput 2560x1080+0+1080

xsetwacom --set "Wacom Bamboo 16FG 4x5 Pen stylus" Area 0 0 $width $height
xsetwacom --set "Wacom Bamboo 16FG 4x5 Pen eraser" Area 0 0 $width $height

#Wacom Bamboo 16FG 4x5 Finger touch
#Wacom Bamboo 16FG 4x5 Pad pad             
#Wacom Bamboo 16FG 4x5 Pen stylus       
#Wacom Bamboo 16FG 4x5 Pen eraser    