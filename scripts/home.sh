#!/bin/sh

# If the count is greater than 1, then an external monitor is connected
if (xrandr --query | grep 'HDMI.* connected' | cut -d ' ' -f1); then
    xrandr --output eDP-1 --off --output DP-1 --off --output HDMI-1 --off --output HDMI-2 --primary --mode 3840x2160 --rate 60 --pos 0x0 --rotate normal
    xrandr --dpi 160
else
    xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output HDMI-2 --off
fi
