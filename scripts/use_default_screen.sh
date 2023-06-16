#!/bin/sh

# Get the names of all connected monitors
monitors=$(xrandr --query | grep ' connected' | cut -d ' ' -f1)

# If any of the connected monitors is HDMI-*, use it and turn off the laptop monitor
if echo "$monitors" | grep -q 'HDMI-'; then
    hdmi_monitor=$(echo "$monitors" | grep 'HDMI-')
    export MONITOR="$hdmi_monitor"
    xrandr --output eDP-1 --off --output DP-1 --off --output HDMI-1 --off --output HDMI-2 --primary --mode 1920x1080 --pos 0x0 --rotate normal
else
    # If no HDMI monitor is connected, use the laptop monitor
    export MONITOR="eDP-1"
    xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output HDMI-2 --off
fi

echo $MONITOR > ~/.config/scripts/monitor
