#!/bin/bash

# xrandr --addmode eDP1 1920x1080
# xrandr --addmode HDMI1 --primary 1920x1080

# Turn backlight down for what
xbacklight -set 50%


# Export KDE styles to QT
export QT_PLUGIN_PATH="${HOME}/.kde4/lib/kde4/plugins/:/usr/lib/kde4/plugins/"

# {{{ Resource and keymap settings
usermodmap="${HOME}/.Xmodmap"
userresources="${HOME}/.Xresources"
sysmodmap="/etc/X11/xinit/.Xmodmap"
sysresources="/etc/X11/xinit/.Xresources"

# Merge system and user resources and keymaps
[[ -r "${sysresources}" ]]  && xrdb -merge "${sysresources}"
[[ -r "${sysmodmap}" ]]     && xmodmap "${sysmodmap}"
[[ -r "${userresources}" ]] && xrdb -merge "${userresources}"
[[ -r "${usermodmap}" ]]    && xmodmap "${usermodmap}"
# }}}



# set mouse speed
xset m 50/10 4

# enable cursor theme should there be one
xsetroot -cursor_name left_ptr



if [ $(xrandr -d :0 -q | grep '\sconnected' | wc -l) -eq 2 ]; then
   xrandr --output eDP1 --mode 2160x1440 --output HDMI1 --mode 1920x1080 --right-of eDP1
   xrandr --output HDMI1 --primary
else
   xrandr --output eDP1 --mode 2160x1440
   xrandr --output eDP1 --primary
fi

# some java fix
export _JAVA_AWT_WM_NONREPARENTING=1

# launch the business
exec awesome

#exec ck-launch-session db-launch awesome

# enables natural scrolling (replace 5 with 4 and 7 with 6 to revert)
# echo "pointer = 1 2 3 5 4 7 6 8 9 10 11 12" > ~/.Xmodmap && xmodmap ~/.Xmodmap

# xcompmgr -cfF -t-9 -l-11 -r9 -o.95 -D6 > /dev/null &
