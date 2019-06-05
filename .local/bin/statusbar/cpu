#!/bin/sh
# CPU module. Use i3blocks native script to show the usage and a one liner to get the CPU temperature

case $BLOCK_BUTTON in
	1) notify-send "💻 CPU intensive processes" "$(ps axch -o cmd:15,%cpu --sort=-%cpu | head)" ;;
	3) notify-send "💻 CPU module " "\- Shows CPU usage and temperature.
- Click to show intensive processes.
- % is of single core." ;;
esac

echo 💻$(/usr/share/i3blocks/cpu_usage) $(sensors | awk '/Core 0/ {print $3}')
