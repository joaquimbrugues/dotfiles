#!/bin/sh
# Use a dmenu to pick a bibliography item and copy it to the clipboard

ITEM=$(cat $BIB | grep '@.*{' | sed -e 's/@.*{//g' -e 's/,//g' | dmenu -l 10 -p "Bibliography items")
[ -n $ITEM ] && echo $ITEM | xclip -i -selection clipboard && notify-send "Copied $ITEM to clipboard"
