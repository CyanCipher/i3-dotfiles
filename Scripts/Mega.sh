#!/bin/bash
while true; do

inotifywait -e modify,create,delete,move -r /home/cyan/Mega && \
    notify-send "Data Syncing..." && \
    rclone sync -v /home/cyan/Mega/ Mega:Data/ && \
    notify-send "Data Synced..." 
done
