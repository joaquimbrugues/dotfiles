#!/bin/sh
MYVAR=`echo "Whoopsie\\ni3-quit\\nlinux-quit" | dmenu -l 3 | cut -d- -f1`
if [ $MYVAR = "i3" ]; then
	i3-msg exit
fi
if [ $MYVAR = "linux" ]; then
	poweroff
fi
