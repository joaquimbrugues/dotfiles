#!/bin/sh
# Give name and location of the temp file
TMPDIR="$HOME/tmp"
[ ! -d $TMPDIR ] && mkdir $TMPDIR
echo "$TMPDIR/latex_current"
