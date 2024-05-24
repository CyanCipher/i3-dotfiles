#!/bin/bash 

UNAME=$(awk -F':' -v uid=1000 '$3 == uid { print $1 }' /etc/passwd)

## Fancy
#i3lock -e -k -i ~/.config/i3/lock.jpg --bar-indicator --greeter-text "Hey, $UNAME!" --greeter-font Hack Nerd Font --verif-color 89b4fa --wrong-color f38ba8 --greeter-pos "190:150" --bar-color 801e1e2e --bar-max-height 15 --greeter-color ffffff --greeter-size 70 --time-size 50 --date-size 20 --time-color 89b4fa --date-color a6e3a1 

## Minimal 
i3lock -e -k -i ~/.config/i3/lock.jpg --bar-indicator --verif-color 000000 --wrong-color f38ba8 --bar-color f38ba82e --bar-max-height 15 --time-size 30 --date-size 20 --time-color ffffff --date-color ffffff
