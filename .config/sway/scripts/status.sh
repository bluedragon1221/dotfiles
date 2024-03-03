#!/bin/bash
date=$(date +'%Y/%b/%d %a')
time=$(date +'%I_%M')

bat_device=$(upower -e | grep BAT)
battery=$(upower -i "$bat_device" | grep "percentage" | awk '{print $2}')
volume=$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2}')
brightness=$(brightnessctl get)

### SwayBar can't do colors :'(
echo -e "bat:$battery | vol:$volume | br:$brightness | dat:[$date] | time:$time"
