#!/bin/sh
# Show date and current time

case $BLOCK_BUTTON in
	1) notify-send "$(ncal -M -bh)";;
	3) notify-send "Date and time module" "\- Click to show current month's calendar";;
esac

date '+📅%d %b %Y - 🕓%H:%M:%S'
