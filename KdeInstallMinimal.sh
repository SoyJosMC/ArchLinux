#!/bin/bash 

echo "Instalando Kde y Dependencias"
sudo pacman -S --noconfirm plasma-desktop systemsettings breeze dolphin plasma-pa plasma-nm \
    bluedevil bluez bluez-utils powerdevil kscreen plasma-login-manager konsave kdeplasma-addons \
    qt6-svg qt6-virtualkeyboard qt6-multimedia-ffmpeg

konsave -i ./konsave/kde-tokyonight.knsv
konsave -a kde-tokyonight

sudo systemctl enable --now plasmalogin