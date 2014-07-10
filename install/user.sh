#!/bin/sh
DOTFILES="$HOME/dotfiles"
cd "$HOME"

mkdir -p ".config/Terminal"
mkdir -p ".vim/tmp"
mkdir -p ".xmonad/"
mkdir -p ".mpd/"
mkdir -p "bin/"
mkdir -p ".mpv/"

ln -s "$DOTFILES/.gitconfig"
ln -s "$DOTFILES/.mpdconf"
ln -s "$DOTFILES/terminalrc" ".config/Terminal"
ln -s "$DOTFILES/.tmux.conf"
ln -s "$DOTFILES/.vimrc"
ln -s "$DOTFILES/.xinitrc" ".xsession"
ln -s "$DOTFILES/.xmobarrc.$(hostname)" ".xmobarrc"
ln -s "$DOTFILES/xmonad.hs" ".xmonad/"
ln -s "$DOTFILES/.bash_aliases"
ln -s "$DOTFILES/bin/togglemute.sh" "bin/"
ln -s "$DOTFILES/bin/single_crc.sh" "bin/"
ln -s "$DOTFILES/bin/all_crc.sh" "bin/"
ln -s "$DOTFILES/bin/is_number" "bin/"
ln -s "$DOTFILES/bin/passman.sh" "bin/"
ln -s "$DOTFILES/.xbindkeysrc"
ln -s "$DOTFILES/mpvconfig" ".mpv/config"

pip install --user git+git://github.com/Lokaltog/powerline
mkdir -p ".fonts"
cd ".fonts"
wget "https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf" -O "PowerlineSymbols.otf"
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
