#!/run/current-system/sw/bin/bash

batlevel=$(cat /sys/class/power_supply/*/capacity)
date_format=$(date +'%d-%m-%Y %H:%M:%S')


echo $batlevel% $date_format
