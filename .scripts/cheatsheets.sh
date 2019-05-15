#!/bin/sh
# Select one of various cheatsheets (in a local folder, in pdf format) using dmenu, and open it with zathura

CHEATDIR=$HOME/Documents/cheatsheets
CHEATSHEET="$(ls $CHEATDIR | sed -e 's/\.[^.]*$//g' | dmenu -p 'Pick a cheatsheet' -l 10 | sed -e 's/^$//')"

[ -n "$CHEATSHEET" ] && zathura "$(echo $CHEATDIR/$CHEATSHEET).pdf"
