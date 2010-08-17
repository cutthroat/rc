#!/bin/sh -e
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

FG='#a8a3f7'
BG='#3f3c6d'

function sbar
{
    i3status | dzen2 -e 'onstart=lower' -x 400 -w 880 -ta r -fg $FG -bg $BG
    # or -w 624
}

function starcraft
{
    xrandr --output LVDS --off
    exec wine $HOME/wine/drive_c/StarCraft/StarCraft.exe
}


setxkbmap -layout us,bg -variant ,phonetic
setxkbmap -option grp:shifts_toggle
setxkbmap -option altwin:meta_win
xmodmap $HOME/.Xmodmap

xrandr --output VGA-0 --auto --left-of LVDS
xsetroot -cursor_name left_ptr
sbar &
unclutter &
(nitrogen --restore && xrandr --output LVDS --off) &
xmonad
kill %2
kill %1

#exec awesome
#exec i3
