#!/bin/bash

function check_input {
	is_number "$1" || return 1
	test "$1" -lt 1 && return 1
	test "$1" -gt "$2" && return 1
	return 0
}


if [ $# -ne 1 ]; then
	echo Passlist required
	exit 1
fi

if [ ! -f "$1" ]; then
	echo File does not exist
	exit 1
fi

PASSLIST_LINES=$(wc "$1" -l | cut -d " " -f 1)
PAD=$(expr length $PASSLIST_LINES)

CURRENT_LINE=1
while read p; do
	printf "%0"$PAD"d " $CURRENT_LINE
	echo "$p"
	CURRENT_LINE=$(($CURRENT_LINE + 1))
done < "$1"

while ! check_input "$CHOICE" "$PASSLIST_LINES"; do
	read -p "Which password? " CHOICE
done

FULL_LINE="$(head -n $CHOICE "$1" | tail -n 1)"
echo "$FULL_LINE" | grep -q "|"
if [ $? -eq 0 ]; then
	WEBSITE="$(echo "$FULL_LINE" | cut -d "|" -f 1 | head -c -2)"
	PIPE="$(echo "$FULL_LINE" | cut -d "|" -f 2-)"
	echo "$WEBSITE"
	echo "$PIPE"
	while ! getpasswd.sh "$WEBSITE" $PIPE ; do true; done
else
	WEBSITE="$FULL_LINE"
	PIPE=""
	echo "$WEBSITE"
	while ! getpasswd.sh "$WEBSITE" ; do true; done
fi
