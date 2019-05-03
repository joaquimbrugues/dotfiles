#!/bin/sh

man -k . | dmenu -p "Show man" -l 10 | awk '{print $1}' | xargs -r man -Tpdf | zathura -
