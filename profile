export TEXINPUTS=:/home/matthew/latex-templates/tex
export MPD_HOST="$HOME"/.mpd/socket
export EDITOR=vim

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

if [ -d "${XDG_CONFIG_HOME:-$HOME/.config}"/profile.d ]; then
  for i in "${XDG_CONFIG_HOME:-$HOME/.config}"/profile.d/*.sh; do
    if [ -r "$i" ]; then
      . "$i"
    fi
  done
  unset i
fi
