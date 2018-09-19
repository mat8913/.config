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
