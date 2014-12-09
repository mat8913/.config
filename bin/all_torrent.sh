#!/bin/bash
if [ $# -gt 1 ]; then
	echo "Invalid usage."
	exit 1
fi

SPATH=${1:-.}

find "$SPATH" -type f -regextype posix-egrep -regex '^.*\.torrent$' \
     -exec single_torrent.sh {} \;
