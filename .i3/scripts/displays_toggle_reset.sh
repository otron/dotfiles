#!/bin/bash

laptop_display=eDP1
external_display="DP1-1"

if xrandr | grep "$external_display disconnected"; then
    xrandr --output "$external_display" --off --output "$laptop_display" --auto
else
    xrandr --output "$laptop_display" --off --output "$external_display" --auto
fi
