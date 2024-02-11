#!/bin/bash

function run {
  if ! pgrep -x $(basename $1 | head -c 15) 1>/dev/null;
  then
    $@&
  fi
}

#Set your native resolution IF it does not exist in xrandr
#More info in the script
#run $HOME/.config/qtile/scripts/set-screen-resolution-in-virtualbox.sh

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
#autorandr horizontal

#xrandr --output eDP-1 --primary --mode 1680x1050 --pos 0x0 --rotate normal --rate 60
#xrandr --output HDMI-1 --mode 1920x1080i --rate 60 --right-of eDP-1

#change your keyboard if you need it
#setxkbmap -layout be
#Set keyboard (in x) to switch capslock and backspace
#setxkbmap -option caps:backspace &
#setxkbmap -option shift:both_capslock_cancel &

#keybLayout=$(setxkbmap -v | awk -F "+" '/symbols/ {print $2}')

#if [ $keybLayout = "be" ]; then
#  cp $HOME/.config/qtile/config-azerty.py $HOME/.config/qtile/config.py
#fi

#autostart ArcoLinux Welcome App
#run dex $HOME/.config/autostart/arcolinux-welcome-app.desktop &

#Som:e ways to set your wallpaper besides variety or nitrogen
feh --bg-fill /home/ca/Pictures/wallpapers/0103.jpg /home/ca/Pictures/wallpapers/0056.jpg & 
#start the conky to learn the shortcuts
#(conky -c $HOME/.config/qtile/scripts/system-overview) &

#start sxhkd to replace Qtile native key-bindings
run sxhkd -c ~/.config/qtile/sxhkd/sxhkdrc &

run clipmenud &
# run buckle -f -g 7 -s 0 &
#starting utility applications at boot time
#run variety &
#run nm-applet &
#run copyq &
#run pamac-tray &
#run xfce4-power-manager &
#numlockx on &
#blueberry-tray &
#picom --config $HOME/.config/qtile/scripts/picom.conf &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#polkit-dumb-agent &
#/usr/lib/xfce4/notifyd/xfce4-notifyd &

#starting user applications at boot time
#run volumeicon &
#run discord &
#nitrogen --restore &
#run caffeine -a &
#run vivaldi-stable &
#run firefox &
#run thunar &
#run dropbox &
#run insync start &
#run spotify &
#run atom &
#run telegram-desktop &

xset s off &
xset dpms 0 0 0 & 
xdotool sleep 1 mousemove 1450 1200 sleep 1 mousemove 37 2135 sleep 1 click 1 mousemove 1450 1200 &
