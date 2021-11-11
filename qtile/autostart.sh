#!/usr/bin/env bash 
festival --tts $HOME/.config/qtile/welcome_msg &
lxsession &
picom &
nitrogen --restore &
cbatticon &
pasystray &
/usr/bin/emacs --daemon &
nm-applet &
dunst &
