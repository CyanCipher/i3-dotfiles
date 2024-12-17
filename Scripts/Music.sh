#!/bin/bash
while true; do

inotifywait -e modify,create,delete,move -r /home/cyan/Music && \
    notify-send "Music Syncing..." && \
    rclone sync -v /home/cyan/Music/ Mega:Music/ && \
    notify-send "Music Synced..." 
done
