#!/bin/sh
MYVAR=`echo "Whoopsie\\nYes, I want to exit i3" | dmenu -l 2 | cut -d, -f1`
if [ $MYVAR = "Yes" ]; then
	i3-msg exit
fi
