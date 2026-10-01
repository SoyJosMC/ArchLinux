#!/bin/bash

echo "Instalando los Archivos"

chmod +x ./lazyvim-setup.sh
chmod +x ./Software.sh
chmod +x ./terminal.sh

sudo ./Software.sh
./terminal.sh
./lazyvim-setup.sh

echo "Si deseas Instalar Kde Plasma Minimo Ejecuta"
echo "sudo chmod +x ./KdeInstallMinimal.sh && sudo ./KdeInstallMinimal.sh"