if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/local/bin" ] ; then
	PATH="$HOME/local/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
	PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.cabal/bin" ] ; then
	PATH="$HOME/.cabal/bin:$PATH"
fi

export MPD_HOST="$HOME"/.mpd/socket
export TEXINPUTS=:/home/matthew/latex-templates/tex

alias tmux="tmux -2"
alias colcor="redshift -l -33.9900016784668:150.884429931641"
alias hibernate="dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Hibernate"
alias suspend="dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend"
alias httpd-python="python3 -m http.server"
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias dcmake="cmake -DCMAKE_BUILD_TYPE=DEBUG"

DEBEMAIL="mbekkema97@gmail.com"
DEBFULLNAME="Matthew Bekkema"
export DEBEMAIL DEBFULLNAME
export EDITOR=vim
alias vi=vim
