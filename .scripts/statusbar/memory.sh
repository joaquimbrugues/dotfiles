#!/bin/sh
# Show the used RAM and the most RAM consuming processes
# Copied shamelessly from Luke Smith's voidrice files

case $BLOCK_BUTTON in
	1) notify-send "🧠 Memory consuming processes" "$(ps axch -o cmd:15,%mem --sort=-%mem | head)" ;;
	3) notify-send "🧠 Memory module" "\- Shows Memory Used/Total.
- Click to show memory consuming processes." ;;
esac

free -h | awk '/^Mem:/ {print $3 "/" $2}'
