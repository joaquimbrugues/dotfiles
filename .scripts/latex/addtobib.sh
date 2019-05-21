#!/bin/sh
# Add the item in the clipboard to the bibliography list

ITEM=$(xclip -o)
ID=$(echo $ITEM | cut -d, -f1 | sed -e 's/@.*{//')
if [ -z "$ID" ]
then
	notify-send "Malformed input"
else
	# If the bibliography exists, add a newline
	[ -w $BIB ] && printf "\n" >> $BIB
	# If the bibliography file does not exist, create it
	[ ! -w $BIB ] && touch $BIB
	# Format the bibliography item and output it to the file
	echo "$(echo $ITEM | sed -e 's/, /,\n\t/g' -e 's/} /}\n/')" >> $BIB
	notify-send "$ID added to the bibliography"
fi
