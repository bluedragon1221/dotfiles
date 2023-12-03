#!/bin/bash
date=$(date +'%Y/%b/%d %a')
time=$(date +'%I:%M')

bat_device=$(upower -e | grep BAT)
bat=$(upower -i "$bat_device" | grep "percentage" | awk '{print $2}')

### SwayBar can't do colors :'(

echo -e "[$bat] [$date] [$time]"
