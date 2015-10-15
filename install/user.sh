#!/bin/sh
DOTFILES="$HOME/dotfiles"
cd "$HOME"

# Make directories
mkdir -p ".config/Terminal"
mkdir -p ".vim/tmp"
mkdir -p ".xmonad/"
mkdir -p ".mpd/"
mkdir -p "bin/"
mkdir -p ".mpv/"

# Link ~/*
ln -s "$DOTFILES/.gitconfig"
ln -s "$DOTFILES/.mpdconf"
ln -s "$DOTFILES/.tmux.conf"
ln -s "$DOTFILES/.vimrc"
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

# Vim plugins
pip install --user powerline-status
mkdir -p ".fonts"
cd ".fonts"
wget "https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf" -O "PowerlineSymbols.otf"
wget "https://github.com/Lokaltog/powerline-fonts/raw/master/Inconsolata/Inconsolata%20for%20Powerline.otf" -O "Inconsolata for Powerline.otf"
fc-cache -vf "$HOME"/.fonts
mkdir -p "$HOME"/.config/fontconfig/conf.d/
cd "$HOME"/.config/fontconfig/conf.d/
wget "https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf" -O "10-powerline-symbols.conf"
cd "$HOME"

cd ".vim"
if [ ! -d "vim-pathogen" ]; then\
	git clone "git://github.com/tpope/vim-pathogen.git"
fi
cd "vim-pathogen"
git pull
cd "$HOME/.vim"
ln -s "vim-pathogen/autoload"
if [ ! -d "bundle" ]; then\
	mkdir "bundle"
fi
cd "bundle"

if [ ! -d "vim-colors-solarized" ]; then\
	git clone "git://github.com/altercation/vim-colors-solarized.git"
fi
cd "vim-colors-solarized"
git pull
cd "$HOME/.vim/bundle"

if [ ! -d "syntastic" ]; then\
	git clone "git://github.com/scrooloose/syntastic.git"
fi
cd "syntastic"
git pull
cd "$HOME/.vim/bundle"

if [ ! -d "vim-fugitive" ]; then\
	git clone "git://github.com/tpope/vim-fugitive"
fi
cd "vim-fugitive"
git pull
cd "$HOME/.vim/bundle"

if [ ! -d "gundo.vim" ]; then\
	git clone "git://github.com/sjl/gundo.vim"
fi
cd "gundo.vim"
git pull
cd "$HOME/.vim/bundle"

if [ ! -d "vim-obsession" ]; then\
	git clone "git://github.com/tpope/vim-obsession.git"
fi
cd "vim-obsession"
git pull
cd "$HOME/.vim/bundle"
