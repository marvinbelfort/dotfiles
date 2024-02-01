#!/bin/sh

$HOME/.config/xorg_configs/double_monitor.sh &
feh --bg-fill $HOME/.wallpaper/tiger_art-wallpaper-2560x1080.jpg
/usr/bin/nm-applet &
xfce4-clipman &
picom -b &
