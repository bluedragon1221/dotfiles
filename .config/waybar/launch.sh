#!/bin/bash
killall -q waybar
waybar -c ~/.config/waybar/config.json -s ~/.config/waybar/style.css &
