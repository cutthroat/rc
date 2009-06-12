#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

#FG='#a8a3f7' 
#BG='#3f3c6d' 
FG='#dddddd'
BG='#666666'
FN=-*-terminus-medium-*-*-*-14-*-*-*-*-*-iso10646-1

hsetroot -full ~/graphics/wallpaper
xsetroot -cursor_name left_ptr
#urxvtd -q -o -f
unclutter &
xmonad
pkill unclutter
