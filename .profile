#!/bin/sh
# Profile file. Runs on login

export TERMINAL="st"
export EDITOR="nvim"
export BROWSER="firefox"
export READER="zathura"
export BIB="$HOME/Documents/LaTeX/references.bib"
export PATH="$PATH:$HOME/.local/bin"

export LLIMA_FIFO="/tmp/llima-fifo"
export LLIMA_NAME="llimabar"
export LOCALDB="$HOME/.local/share/home.db"

setxkbmap -option "caps:swapescape"
