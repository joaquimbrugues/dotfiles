#!/bin/sh
# Use a dmenu to switch between diferent screen layouts with xrandr
CHOICES="single\\ndual-right\\ndual-left"

case $(echo $CHOICES | dmenu -p "Monitor configuration:" -l 10) in
	single) xrandr --output LVDS-1 --mode 1366x768 --output HDMI-1 --off && $HOME/.scripts/wallpaper.sh;;
	dual-right) xrandr --output LVDS-1 --mode 1366x768 --pos 0x312 --primary --output HDMI-1 --mode 1920x1080 --pos 1366x0 && $HOME/.scripts/wallpaper.sh;;
	dual-left) xrandr --output LVDS-1 --mode 1366x768 --pos 1920x312 --primary --output HDMI-1 --mode 1920x1080 --pos 0x0 && $HOME/.scripts/wallpaper.sh
	*) arandr && $HOME/.scripts/wallpaper.sh
esac
