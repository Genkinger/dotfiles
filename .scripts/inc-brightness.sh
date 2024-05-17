xrandr --output eDP --brightness $(echo "$(xrandr --verbose --current | grep eDP -A5 | tail -n1 | sed 's/ /\n/g' | tail -n1) + 0.1" | bc)
