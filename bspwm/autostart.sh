#!/bin/bash

function run {
    if ! pgrep $1 ;
    then 
        $@&
    fi
}

$HOME/.config/bspwm/polybar/launch.sh &

run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
run picom --config $HOME/.config/picom/picom.conf --vsync --experimental-backends &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
nitrogen --restore &
