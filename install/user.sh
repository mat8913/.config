#!/bin/sh
DOTFILES="$HOME/dotfiles"
cd "$HOME"

mkdir -p ".config/Terminal"
mkdir -p ".vim/tmp"
mkdir -p ".xmonad/"

ln -s "$DOTFILES/.gitconfig"
ln -s "$DOTFILES/.mpdconf"
ln -s "$DOTFILES/terminalrc" ".config/Terminal"
ln -s "$DOTFILES/.tmux.conf"
ln -s "$DOTFILES/.vimrc"
ln -s "$DOTFILES/.xinitrc" ".xsession"
ln -s "$DOTFILES/.xmobarrc.$(hostname)" ".xmobarrc"
ln -s "$DOTFILES/xmonad.hs" ".xmonad/"

pip install --user git+git://github.com/Lokaltog/powerline
mkdir -p ".fonts"
cd "fonts"
wget "https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf"
fc-cache -vf "$HOME"/.fonts
mkdir -p "$HOME"/.config/fontconfig/conf.d/
cd "$HOME"/.config/fontconfig/conf.d/
wget "https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf"
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
