#!/bin/bash
kill $(pgrep waybar)
waybar -c ~/.config/waybar/config.json -s ~/.config/waybar/style.css &
