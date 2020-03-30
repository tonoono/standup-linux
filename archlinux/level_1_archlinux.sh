#!/bin/sh

### ----- 
### Level 1 Setup
### 
### Calling this file will cascade to fall the levels below it until it hits the floor.
### ----- 

/bin/sh ./level_0_archlinux.sh

echo " "
echo " >>>>> Level 1 >>> Xorg, i3-gaps and base X applications"
echo " "

echo "Install X environment ..."
pacman -S --noconfirm xorg-server xorg-xinit xclip xsel

echo "Install i3 ..."
pacman -S --noconfirm i3-gaps i3blocks i3lock i3status compton unclutter arandr

echo "Install i3 support ..."
pacman -S --noconfirm rxvt-unicode rxvt-unicode-terminfo urxvt-perls dmenu dunst\
  network-manager-applet scrot ttf-hack ttf-linux-libertine ttf-inconsolata noto-fonts\
  rofi feh python-netifaces python-psutil python-requests xorg-xdpyinfo

echo "Install X apps ..."
pacman -S --noconfirm qutebrowser mupdf xorg-xbacklight pulseaudio pavucontrol conky

echo "Install development utils ..."
pacman -S --noconfirm base-devel

echo "Install terminal browser ..."
pacman -S --noconfirm surfraw

echo "Install network manager app ..."
systemctl enable NetworkManager


