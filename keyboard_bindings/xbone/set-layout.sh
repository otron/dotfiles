#!/bin/bash

# us qwerty mac variant, any alt as 3rd level switch, caps rebound to escape
setxkbmap us -option "caps:escape" -variant mac -option "lv3:alt_switch"

# remap print screen to super_r
xmodmap -e "keycode 107 = Super_R"
