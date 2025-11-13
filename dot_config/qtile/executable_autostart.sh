#!/bin/sh

$HOME/.config/xorg_configs/double_monitor.sh &
feh --bg-fill $HOME/data/images/wallpaper/tiger_art-wallpaper-2560x1080.jpg
/usr/bin/nm-applet &
# xfce4-clipman &
copyq &
thunar --daemon &
flameshot &
dunst &
picom -b &
