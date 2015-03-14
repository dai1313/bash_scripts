#!/bin/sh

TOGGLE=$HOME/.lockTrackpad

if [ ! -e $TOGGLE ]; then
 	touch $TOGGLE
	xinput set-prop 12 "Device Enabled" 0
	notify-send "Trackpad deactivated."
else
	rm $TOGGLE
	xinput set-prop 12 "Device Enabled" 1
	notify-send "Trackpad activated."
fi
