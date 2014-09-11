#!/bin/bash
if [ $# -lt 1 ]; then
	echo Requires filename
	exit 1
fi

for i in "$@"; do\
	WANTED_CRC=$(echo "$i" | grep -o -E '[a-fA-F0-9]{8}' | tail -n 1)
	ACTUAL_CRC=$(cksfv "$i" | tail -c 9)
	if [ x"$WANTED_CRC" != x"$ACTUAL_CRC" ]; then
		echo $i shall not pass
	fi
done
