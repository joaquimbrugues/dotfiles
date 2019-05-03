#!/bin/sh
MYVAR=`echo "Whoopsie\\ni3-quit\\nlinux-quit\\nreboot" | dmenu -p "Do you want to quit?" -l 4 | cut -d- -f1`
if [ $MYVAR = "i3" ]; then
	i3-msg exit
fi
if [ $MYVAR = "linux" ]; then
	poweroff
fi
if [ $MYVAR = "reboot" ]; then
	reboot
fi
