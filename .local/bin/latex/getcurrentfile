#!/bin/sh
# If the temporal file signaling the document to be compiled exists,
# return its contents. Otherwise, open a dmenu to create it
TMPFILE=$($HOME/.scripts/latex/tmpfileinfo.sh)
if [ ! -r $TMPFILE ]
then
	touch $TMPFILE
	find "$HOME" | grep ".*\.tex$" | dmenu -p "Pick a working tex file" -l 10 > $TMPFILE
fi
cat $TMPFILE
