#!/bin/bash

# us qwerty mac variant, any alt as 3rd level switch, caps rebound to escape
setxkbmap us -option "caps:escape" -variant mac -option "lv3:alt_switch"

# remap print screen to super_r
xmodmap -e "keycode 107 = Super_R"

# when ergodox/external keyboard isn't available, swap alt and super/windows keys
xmodmap -e "keycode 133 = ISO_Level3_Shift"
xmodmap -e "keycode 64 = Super_L"
xmodmap -e "keycode 108 = Super_R"
xmodmap -e "keycode 107 = ISO_Level3_Shift"
