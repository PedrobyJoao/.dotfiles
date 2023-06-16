#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
# One-monitor usage setup. It will use External Monitor XOR Laptop screen
HDMI_MONITOR=$(xrandr --query | grep 'HDMI.* connected' | cut -d ' ' -f1)
if [[ HDMI_MONITOR ]]; then
    export MONITOR=$HDMI_MONITOR
    polybar --reload bspwm-external -c $HOME/.config/polybar/config.ini &
else
    export MONITOR=$(xrandr --query | grep ' connected' | cut -d ' ' -f1)
    polybar --reload bspwm-laptop -c $HOME/.config/polybar/config.ini &
fi
