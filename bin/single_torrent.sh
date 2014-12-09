#!/bin/bash
if [ $# -lt 1 ]; then
	echo Requires filename
	exit 1
fi

for i in "$@"; do
	torrentcheck -t "$i" -p "$(dirname "$i")" > /dev/null
	if [ $? != 0 ]; then
		echo $i shall not pass
	fi
done
