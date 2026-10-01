#!/bin/bash 

echo "Instalando Kde y Dependencias"
sudo pacman -S --noconfirm plasma-desktop systemsettings breeze dolphin plasma-pa plasma-nm \
    bluedevil bluez bluez-utils powerdevil kscreen plasma-login-manager konsave kdeplasma-addons \
    qt6-svg qt6-virtualkeyboard qt6-multimedia-ffmpeg

sudo systemctl enable --now plasmalogin

echo "Instalado"
echo "Si deseas Puedes Instalar el Tema kde-tokyonight desde github [https://github.com/SoyJosMC/ArchLinux/releases/tag/Theme-kde]"