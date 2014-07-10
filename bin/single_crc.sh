#!/bin/bash
if [ $# -ne 1 ]; then
	echo Requires filename
	exit
fi
WANTED_CRC=$(echo "$1" | grep -o -E '[a-fA-F0-9]{8}' | tail -n 1)
ACTUAL_CRC=$(cksfv "$1" | tail -c 9)
if [ x"$WANTED_CRC" != x"$ACTUAL_CRC" ]; then
	echo $1 shall not pass
fi
