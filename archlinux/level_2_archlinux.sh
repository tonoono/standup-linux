#!/bin/sh

### ----- 
### Level 2 Setup
### 
### Calling this file will cascade to fall the levels below it until it hits the floor.
### ----- 

/bin/bash level-1-archlinux.sh


echo "Install productvity apps ..."
pacman -S --noconfirm calcurse 

echo "Install latex ..."
pacman -S --noconfirm pandoc texlive-core texlive-science texlive-latexextra minted

echo "Install graphics ..."
pacman -S --noconfirm imagemagick

echo "Install video ..."
pacman -S --noconfirm mpv vlc smplayer mplayer

echo "Install audio ..."
pacman -S --noconfirm cmus

echo "Install disk utils ..."
pacman -S --noconfirm hdparm

echo "Install compression tools ..."
pacman -S --noconfirm p7zip unrar zip unzip 

echo "Install file/archiving tools ..."
pacman -S --noconfirm ncdu sshfs borg

echo "Install Development environments ..."
pacman -S --noconfirm docker docker-compose docker-machine vagrant virtualbox

echo "Install Ansible ..."
pacman -S --noconfirm ansible ansible-lint

echo "Install Development tools ..."
pacman -S --noconfirm meld kdiff3 

