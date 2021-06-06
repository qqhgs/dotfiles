#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Mod Keymap
setxkbmap -option "ctrl:swapcaps"
xcape -e 'Control_L=Escape'
xmodmap -e 'keycode 108 = BackSpace'

# Compositor
picom -CGb &

# Wallpaper
nitrogen --restore &
 
# # Loop
 while true; do
     x-dwmstatus
     # xsetroot -name " $(date '+%A, %B %d, %Y %H:%M') "
     # sleep 2
 done &
 while true; do
     dwm 2> ~/.dwm.log
 	# dwm >/dev/null 2>&1
 done
# # exec dwm
