#!/bin/bash 

UNAME=$(awk -F':' -v uid=1000 '$3 == uid { print $1 }' /etc/passwd)
i3lock -e -k -i ~/.config/i3/lock.jpg --bar-indicator --greeter-text "Hey, $UNAME!" --greeter-font Hack Nerd Font --verif-color 89b4fa --wrong-color f38ba8 --greeter-pos "680:320" --bar-color 801e1e2e --bar-max-height 15 --greeter-color cba6f7 --greeter-size 70 --time-size 50 --date-size 20 --time-color 89b4fa --date-color a6e3a1 | systemctl suspend
