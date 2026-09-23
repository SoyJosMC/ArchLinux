#!/bin/bash

echo "Instalando los Archivos"

chmod +x ./lazyvim-setup.sh
chmod +x ./Software.sh
chmod +x ./terminal.sh

sudo ./Software.sh
./terminal.sh
./lazyvim-setup.sh

cp -r ./icons ~/.icons
cp -r ./themes ~/.themes
sudo cp -r ./backgrounds ~/.backgrounds
