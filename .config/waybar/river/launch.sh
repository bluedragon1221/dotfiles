#!/bin/bash

killall -q waybar
waybar -c ~/.config/waybar/river/config.json -s ~/.config/waybar/style.css &
