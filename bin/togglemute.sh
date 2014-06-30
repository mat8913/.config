#!/bin/sh
if [ -e ~/.mute ]; then
	rm ~/.mute
	pactl set-sink-mute 0 false
else
	touch ~/.mute
	pactl set-sink-mute 0 true
fi
