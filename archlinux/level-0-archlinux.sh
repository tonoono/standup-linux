#!/bin/sh

### -----
### This file is the root baremetal install for any Arch Linux server that I'm running
### -----


echo "Level 0 >>> terminal/console applications"

echo "Install zsh + extras apps ..."
pacman -S --noconfirm zsh powerline zsh-autosuggestions zsh-completions zsh-lovers\
  zsh-syntax-highlighting zsh-theme-powerlevel9k powerline awesome-terminal-fonts\
  powerline-fonts powerline-vim

echo "Install terminal apps ..."
pacman -S --noconfirm neovim vim neofetch tmux ranger atool elinks ffmpegthumbnailer\
  highlight mediainfo odt2txt perl-image-exiftool poppler python-chardet sudo w3m

echo "Install extra terminal apps ..."
pacman -S --noconfirm python-virtualenv python-virtualenvwrapper\
  zsh-history-substring-search

echo "Install version control apps ..."
pacman -S --noconfirm git tig


