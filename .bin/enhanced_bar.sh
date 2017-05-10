#!/bin/sh
# shell script to prepend i3status with more stuff

i3status | while :
do
        read line
	uptime="$(date -u -d  @$(cat /proc/uptime | awk -F. '{print $1}') +%H:%M:%S)"
        echo "Up: $uptime | $line" || exit 1
done
