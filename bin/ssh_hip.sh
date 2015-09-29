#!/bin/sh

if [ "$#" -lt 2 ]; then
	echo "Usage: $0 HOSTNAME IP"
	exit 1
fi

HOSTNAME=$1
IP=$2
shift 2

TEMP="$(mktemp)"
trap "rm \"$TEMP\"" EXIT

cat ~/.ssh/config > "$TEMP"
echo "Host TMP" >> "$TEMP"
echo "CheckHostIP no" >> "$TEMP"
echo "HostKeyAlias $HOSTNAME" >> "$TEMP"
echo "HostName $IP" >> "$TEMP"

ssh TMP -F "$TEMP" "$@"
