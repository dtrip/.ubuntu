#!/bin/bash

xrandr --addmode eDP1 1366x768
xrandr --addmode HDMI1 1920x1080

# xrandr --output HDMI1  --mode 1920x1080

# xrandr --output eDP1 --mode 1366x768 --output HDMI1 --mode 1920x1080 --right-of eDP1
#xrandr --output eDP1 --mode 1366x768 --pos 0x462 --output HDMI1 --primary --mode 1920x1080 --pos 1366x0

# new config for notch2
xrandr --output eDP1 --mode 1920x1080 --output HDMI1 --primary --mode 1920x1080 --right-of eDP1

#exec openbox-session

exec awesome &
# exec dwm

# enables natural scrolling (replace 5 with 4 and 7 with 6 to revert)
# echo "pointer = 1 2 3 5 4 7 6 8 9 10 11 12" > ~/.Xmodmap && xmodmap ~/.Xmodmap

# xcompmgr -cfF -t-9 -l-11 -r9 -o.95 -D6 > /dev/null &

# docky &

# exec conky &
# exec avant-window-navigator &
