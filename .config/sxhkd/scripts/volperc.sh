#!/bin/bash

##########################################################
# Script to display desktop name/number - requires dzen2 #
##########################################################
[ ! -f "/usr/bin/dzen2" ] && exit || echo "Dzen2 exists"

# Display Variables:
hgt=40 # font size
wid=$((hgt*350/100)) # e.g. 3.5 times the height, will display the words 'Three' &  'Seven' correctly.
time=1
fgcolour="#eceff4"
bgcolour="#88c0d0"
font="-*-monospaced-bold-r-*-*-$hgt-*-*-*-*-*-*-*"

# Screen Resolution calculations:
# xargs removes leading spaces
full_res=$(cut -d " " -f 1  <<< "$(xrandr | grep '*' | xargs)")
# Left of 'x' in 1600x900
res_wid="${full_res%%x*}"
# Right of 'x'
res_hgt="${full_res##*x}"

# Do some calculations for x & y co-ordinates:
x=$((a=res_wid-wid, xx=a/2))
y=$((b=res_hgt-hgt-2, yy=b/2))

text=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n 1 | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')

# Display desktop number centre screen:
echo "$text" | dzen2 -fg "$fgcolour" -bg "$bgcolour" -w $wid -x $x -y $y -p $time -fn "$font"
