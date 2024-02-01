#!/bin/sh
xrandr \
  --output HDMI-0 --primary --mode 2560x1080 --pos 0x0 --rotate normal \
  --output DP-2 --mode 1680x1050 --pos 2560x84 --rotate normal \
  --output DP-3 --off \
  --output DP-0 --off \
  --output DP-1 --off \
  --output DP-4 --off \
  --output DP-5 --off
