#!/bin/bash
find "$1" -type f -regextype posix-egrep -regex '.*[A-Fa-f0-9]{8}[^/]*$' \
     -exec single_crc.sh {} \;
