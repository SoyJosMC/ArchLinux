#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Por favor, ejecuta este script con sudo."
  exit1
fi

echo "Actualizando el Sistema"
sudo pacman -Syu --noconfirm

echo "instalando Chaotic-AUR"
echo "1. Inicializando y poblando el llavero de pacman..."
pacman-key --init
pacman-key --populate archlinux

echo "2. Importando la clave PGP de Chaotic-AUR..."
pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 3056513887B78AEB

echo "3. Limpiando caché previa dañada..."
rm -f /var/cache/pacman/pkg/chaotic-keyring.pkg.tar.zst
rm -f /var/cache/pacman/pkg/chaotic-mirrorlist.pkg.tar.zst

echo "4. Instalando chaotic-keyring..."
pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'

echo "5. Instalando chaotic-mirrorlist..."
pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

echo "6. Sincronizando bases de datos..."
sudo cp -r ./pacman.conf /etc/pacman.conf
sudo pacman -Syu --noconfirm

echo "¡Listo! El repositorio de Chaotic-AUR ha sido configurado correctamente."

echo "Instalando dependencias necesarias"
sudo pacman -S --noconfirm git nano nvim base-devel pipewire alsa-utils kitty fastfetch \
 starship curl flatpak gnome-disk-utility networkmanager bluez file-roller fuse

echo "Instalando Software de Internet"
sudo pacman -S --noconfirm brave-bin telegram-dektop discord localsend

echo "Instalado Software Multimedia"
sudo pacman -S --noconfirm mpv loupe kdenlive decibels gpu-screen-recorder flameshot

echo "Instalando Software de Desarrollo"
sudo pacman -S --noconfirm vscodium python python-pip tk

echo "Instalando Software de Oficina"
sudo pacman -S --noconfirm onlyoffice 

echo "Instalando codecs multimedia"
sudo pacman -S --noconfirm gstreamer gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gst-libav \
 ffmpeg lame libmad libdvdread libdvdnav x264 x265

echo "Ya se Instalo todo el Software"
