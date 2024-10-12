#!/bin/sh

#-------------------------------------------------------------------------------
# Arch Linux Mirrorlist Update 
#
# This file will update the list of arch linux mirrors 
#-------------------------------------------------------------------------------

output() {
  echo "  #!> $1 <!#  "
}

output_crit() {
  echo "  !!! $(output "$1") !!!  "
}

echo ""
output_crit "Run this script as sudo or root"
output "Backing up /etc/pacman.d/mirrorlist ..."

if [ -f /etc/pacman.d/mirrorlist.orig ]; then
  cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
else
  cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.orig
  cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
fi

output "Reflector getting 7 fastest mirrors from the United States ..."

reflector -f 7 --country 'United States' --sort rate --save /etc/pacman.d/mirrorlist



