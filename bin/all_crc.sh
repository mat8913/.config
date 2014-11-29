#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Invalid usage."
	exit 1
fi

find "$1" -type f -regextype posix-egrep -regex '.*[A-Fa-f0-9]{8}[^/]*$' \
     -exec single_crc.sh {} \;
