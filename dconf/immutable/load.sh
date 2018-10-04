#!/bin/sh
dconf load /org/gnome/terminal/ < "${XDG_CONFIG_HOME:-$HOME/.config}"/dconf/immutable/terminal.conf
