#!/bin/bash
#
# Creates a temporary script and runs it.
#
# The script will be opened in $EDITOR to allow editing before running.
# If a command is specified, the output of the command will be used as the
# initial content of the script.

TMPFILE="$(mktemp --suffix=.sh)"

function finish() {
	rm "$TMPFILE"
}
trap finish EXIT

"$@" > "$TMPFILE"
"$EDITOR" "$TMPFILE" && . "$TMPFILE"
