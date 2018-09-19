if [ -n "$TMUX" ] ; then
	TERM=screen-256color
	export TERM
fi


export MPD_HOST="$HOME"/.mpd/socket
export TEXINPUTS=:/home/matthew/latex-templates/tex

alias tmux="tmux -2"
alias colcor="redshift -l -33.9900016784668:150.884429931641"
alias httpd-python="python3 -m http.server"
alias grep="grep --color=auto"
alias ls="ls --color=auto --group-directories-first"
alias dcmake="cmake -DCMAKE_BUILD_TYPE=DEBUG"

for i in ~/.muttrc.*; do
	MUTTCONF="${i#$HOME/.muttrc.}"
	alias mutt."$MUTTCONF"="mutt -F ~/.muttrc.$MUTTCONF"
done

DEBEMAIL="mbekkema97@gmail.com"
DEBFULLNAME="Matthew Bekkema"
export DEBEMAIL DEBFULLNAME
export EDITOR=vim
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
