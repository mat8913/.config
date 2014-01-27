#!/bin/sh
if [ ! $(whoami) = "root" ]; then\
	echo "You aren't root!"
	exit 1
fi

sed -i 's/^START_MPD=true$/START_MPD=false/g' /etc/default/mpd
echo "blacklist pcspkr" > /etc/modprobe.d/pcspkr.conf

if [ -f "/etc/bluetooth/audio.conf" ]; then\
	grep "Enable=Socket" "/etc/bluetooth/audio.conf" > /dev/null
	if [ $? = "1" ]; then\
		sed -i '/\[General\]/aEnable=Socket' "/etc/bluetooth/audio.conf"
	fi
fi
