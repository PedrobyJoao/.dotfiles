#! /bin/sh

# Check if HDMI-2 is connected
if xrandr --query | grep -q "HDMI-.* connected"; then
    hdmi_monitor=$(echo "$monitors" | grep 'HDMI-')
    export MONITOR=HDMI-2
else
    export MONITOR=eDP-1
fi
