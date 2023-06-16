#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Get screen detector
export MONITOR=$(cat $HOME/.config/scripts/monitor)

# Launch polybar
polybar bspwm -c $(dirname $0)/config.ini &
