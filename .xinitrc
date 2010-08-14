#!/bin/sh -e
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

function sbar
{
    i3status | dzen2 -e 'onstart=lower' -x 400 -w 880 -ta r -fg $FG -bg $BG
}

# the kbmap must be set here and not in /etn/X11/xorg.conf or it's
# overriden som time after setup and thus breaking xmodmap
setxkbmap -layout us,bg -variant ,phonetic
setxkbmap -option grp:shifts_toggle
setxkbmap -option altwin:meta_win
xmodmap $HOME/.Xmodmap

xsetroot -cursor_name left_ptr
sbar &
unclutter &
nitrogen --restore
xmonad
kill %2
kill %1

#exec awesome
#exec i3
