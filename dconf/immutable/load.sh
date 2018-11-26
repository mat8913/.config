#!/bin/sh
dconf load /org/gnome/terminal/ < "${XDG_CONFIG_HOME:-$HOME/.config}"/dconf/immutable/terminal.conf
dconf load /org/gnome/settings-daemon/plugins/color/ < "${XDG_CONFIG_HOME:-$HOME/.config}"/dconf/immutable/nightlight.conf
dconf load /org/gnome/desktop/wm/keybindings/ < "${XDG_CONFIG_HOME:-$HOME/.config}"/dconf/immutable/keybindings.conf
dconf load /org/gnome/desktop/input-sources/ < "${XDG_CONFIG_HOME:-$HOME/.config}"/dconf/immutable/xkb.conf
gsettings set org.gnome.desktop.background picture-uri "${XDG_CONFIG_HOME:-$HOME/.config}"/wallpaper
