#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
# Check if HDMI-2 is connected
if [[ $(xrandr -q | grep 'HDMI-2 connected') ]]; then
    polybar --reload bspwm-external -c $HOME/.config/polybar/config.ini &
else
    polybar --reload bspwm-laptop -c $HOME/.config/polybar/config.ini &
fi
