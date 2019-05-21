#!/bin/sh
# Add the item in the clipboard to the bibliography list

ITEM=$(xclip -o)
ID=$(echo $ITEM | cut -d, -f1 | sed -e 's/@.*{//')
if [ -z "$ID" ]
then
	notify-send "Malformed input"
else
	printf "\n" >> $BIB
	echo "$(echo $ITEM | sed -e 's/, /,\n\t/g' -e 's/} /}\n/')" >> $BIB
	notify-send "$ID added to the bibliography"
fi
