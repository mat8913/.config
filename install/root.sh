#!/bin/sh
if [ ! $(whoami) = "root" ]; then\
	echo "You aren't root!"
	exit 1
fi

if [ -f "/etc/default/mpd" ]; then\
	sed -i 's/^START_MPD=true$/START_MPD=false/g' /etc/default/mpd
fi

echo "blacklist pcspkr" > /etc/modprobe.d/pcspkr.conf

if [ -f "/etc/bluetooth/audio.conf" ]; then\
	grep -q "Enable=Socket" "/etc/bluetooth/audio.conf"
	if [ $? = "1" ]; then\
		sed -i '/\[General\]/aEnable=Socket' "/etc/bluetooth/audio.conf"
	fi
fi
