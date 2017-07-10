export _JAVA_AWT_WM_NONREPARENTING=1
xsetroot -cursor_name left_ptr
xbindkeys
setxkbmap -layout us,dvorak -option "" -option caps:backspace -option grp:shifts_toggle
feh ~/.config/wallpaper --no-fehbg --bg-fill
xmobar &
xscreensaver &
xss-lock -- xscreensaver-command --lock &
trayer --edge top --widthtype request --alpha 0 --transparent true --tint 0x000000 &
exec xmonad
