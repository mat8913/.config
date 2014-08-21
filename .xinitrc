xbindkeys
setxkbmap -layout us,dvorak -option "" -option caps:backspace -option grp:shifts_toggle
xmobar &
xscreensaver &
trayer --edge top --widthtype request --alpha 255 --transparent true &
exec xmonad
