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
    #xrandr --output LVDS --off
    exec wine $HOME/wine/drive_c/StarCraft/StarCraft.exe
}


setxkbmap -layout us,bg -variant ,phonetic
setxkbmap -option grp:shifts_toggle
setxkbmap -option altwin:meta_win
xmodmap $HOME/.Xmodmap


start_xmonad() {
    xsetroot -cursor_name left_ptr
    sbar &
    unclutter &
    (nitrogen --restore && xrandr --output LVDS --off) &
    xmonad
    kill %2
    kill %1
}

xrandr --output VGA-0 --auto --left-of LVDS
start_xmonad

#xrandr --output S-video --off
#xrandr --output LVDS --auto
#xrandr --output S-video --auto --right-of LVDS
#xrandr --output S-video --set "tv standard" pal
#exec awesome
#exec i3
