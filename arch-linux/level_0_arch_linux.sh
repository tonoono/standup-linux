#!/bin/sh

### -----
### Level 0 Setup
###
### This file is the root baremetal install for any Arch Linux server that I'm running
### -----


echo " "
echo " >>>>> Level 0 >>> terminal/console applications"
echo " "

if [ "$#" -eq 0 ]; then
  echo "Install zsh + extras apps ..."
  pacman -S --noconfirm zsh zsh-autosuggestions zsh-completions zsh-lovers \
    zsh-syntax-highlighting zsh-theme-powerlevel10k powerline awesome-terminal-fonts \
    powerline-fonts powerline-vim ttf-meslo-nerd-font-powerlevel10k

  echo "Install terminal apps ..."
  pacman -S --noconfirm neovim vim neofetch tmux ranger atool elinks ffmpegthumbnailer \
    highlight mediainfo odt2txt perl-image-exiftool poppler python-chardet sudo w3m

  echo "Install extra terminal apps ..."
  pacman -S --noconfirm python-virtualenv python-virtualenvwrapper curl wget \
    zsh-history-substring-search

  echo "Install version control apps ..."
  pacman -S --noconfirm git tig
else
  if [ "$#" -eq 1 ]; then
    if [ "$1" = "remove" ]; then
      echo "Install zsh + extras apps ..."
      pacman -S --noconfirm zsh zsh-autosuggestions zsh-completions zsh-lovers \
        zsh-syntax-highlighting zsh-theme-powerlevel10k powerline awesome-terminal-fonts \
        powerline-fonts powerline-vim ttf-meslo-nerd-font-powerlevel10k

      echo "Install terminal apps ..."
      pacman -S --noconfirm neovim vim neofetch tmux ranger atool elinks ffmpegthumbnailer \
        highlight mediainfo odt2txt perl-image-exiftool poppler python-chardet sudo w3m

      echo "Install extra terminal apps ..."
      pacman -S --noconfirm python-virtualenv python-virtualenvwrapper curl wget \
        zsh-history-substring-search

      echo "Install version control apps ..."
      pacman -S --noconfirm git tig
    fi
  fi
fi


