#!/bin/sh
DOTFILES="$HOME/dotfiles"
cd "$HOME"

# Make directories
mkdir -p ".config/Terminal"
mkdir -p ".xmonad/"
mkdir -p ".mpd/"
mkdir -p "bin/"
mkdir -p ".mpv/"

# Link ~/*
ln -s "$DOTFILES/.gitconfig"
ln -s "$DOTFILES/.mpdconf"
ln -s "$DOTFILES/.tmux.conf"
ln -s "$DOTFILES/.bash_aliases"
ln -s "$DOTFILES/mpvconfig" ".mpv/config"

# Link X11 related
ln -s "$DOTFILES/.xinitrc" ".xsession"
ln -s "$DOTFILES/.xmobarrc.$(hostname)" ".xmobarrc"
ln -s "$DOTFILES/.xbindkeysrc"
ln -s "$DOTFILES/.Xresources"
ln -s "$DOTFILES/xmonad.hs" ".xmonad/"
ln -s "$DOTFILES/terminalrc" ".config/Terminal"

# Link ~/bin/*
for i in "$DOTFILES/bin/"*; do
	ln -s "$i" "bin/"
done
