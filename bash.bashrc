# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# enable color support of ls and also add handy aliases
if command -v dircolors >/dev/null 2>&1; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

if [ -n "$TMUX" ] ; then
	TERM=screen-256color
	export TERM
fi

alias tmux="tmux -2"
alias colcor="redshift -l -33.9900016784668:150.884429931641"
alias httpd-python="python3 -m http.server"
alias grep="grep --color=auto"
alias ls="ls --color=auto --group-directories-first"
alias vi=vim

echo "Previous comments:"
echo
grep -E '#.*$' "$HISTFILE"
echo
echo
task due.before:$(date -d 'now + 2 weeks + 1 day' -I) or +ACTIVE
echo
echo "Current session on $(date '+%A %-d %B  %I:%M:%S%p %Z %Y'):"
echo
