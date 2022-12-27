#!/bin/bash

killall -q polybar

# wait for polybar to shutdown
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

(sleep 2; polybar --config=~/.config/polybar/polybar.config mainbar) &
