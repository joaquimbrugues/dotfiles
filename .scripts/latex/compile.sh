#!/bin/sh
# Multi-use script. Invoke getcurrentfile and do some action with it
FILE=$($HOME/.scripts/latex/getcurrentfile.sh)
[ -z "$FILE" ] && notify-send "ERROR: Null working file" && exit
DIR=$(dirname $FILE)
TERMINAL="xfce4-terminal"

case "$1" in
	-p|--pdf) cd $DIR && pdflatex $(basename $FILE) ;;
	-b|--bibliography) if [ -r $BIB ]
		then
			[ ! -e $(echo "$DIR/references.bib") ] && ln -s $BIB $DIR/references.bib
			cd $DIR && bibtex $(basename $FILE | sed -e 's/\.tex/\.aux/')
		fi
		;;
	-E|--edit) PICK=$(find "$DIR" | grep ".*\.tex$" | dmenu -p "Pick a file to edit (default=$(basename $FILE))" -l 10)
		if [ -z $PICK ]
		then
			$TERMINAL -e "nano $FILE"
		else
			$TERMINAL -e "nano $PICK"
		fi
		;;
	*) cd $DIR && latex $(basename $FILE) ;;
esac
