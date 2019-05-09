#!/bin/sh
# Quit from i3/power off the machine/reboot selecting the option from a dmenu
OPTIONS="Whoopsie\\ni3-quit\\nlinux-quit\\nreboot"
case $(echo $OPTIONS | dmenu -p "Do you want to quit?" -l 20 | cut -d- -f1) in
	i3) i3-msg exit;;
	#linux) poweroff;;
	linux) systemctl poweroff;;
	#reboot) reboot;;
	reboot) systemctl reboot;;
	*) ;;
esac
