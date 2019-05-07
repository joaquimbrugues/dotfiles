#!/bin/sh
# This script is based in Luke Smith's ideas
# Print the list of all available manuals to dmenu, and then print the picked manual to pdf and show it in Zathura
MANUAL=$(man -k . | dmenu -p "Show man" -l 10 | awk '{print $1}')

if [ -n "$MANUAL" ]
then
	man -Tpdf $MANUAL | zathura -
fi
