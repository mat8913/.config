#!/bin/bash
if [ $# -gt 1 ]; then
	echo "Invalid usage."
	exit 1
fi

SPATH=${1:-.}

find "$SPATH" -type f -regextype posix-egrep -regex '.*[A-Fa-f0-9]{8}[^/]*$' \
     -exec single_crc.sh {} \;
