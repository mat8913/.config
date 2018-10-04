#!/bin/sh
dconf load /org/gnome/terminal/ < "${XDG_CONFIG_HOME:-$HOME/.config}"/dconf/immutable/terminal.conf
dconf load /org/gnome/settings-daemon/plugins/color/ < "${XDG_CONFIG_HOME:-$HOME/.config}"/dconf/immutable/nightlight.conf
