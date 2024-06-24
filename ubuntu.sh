#!/bin/bash

echo "Actualizar repo"
sudo apt update
echo "Instalar dependencias"
sudo apt install -y wget zlib1g-dev gnat-10 unzip openjdk-19-jdk gtkwave
echo "Crear carpeta para guardar GHDL"
mkdir ghdl
echo "Obtener GHDL"
wget https://github.com/ghdl/ghdl/releases/download/v4.1.0/ghdl-gha-ubuntu-22.04-gcc.tgz -P ghdl/
echo "Entrar al directorio y descomprimir GHDL"
cd ghdl
tar -xzvf ghdl*.tgz
echo "Eliminar GHDL comprimido"
rm g*tgz
echo "Agregar GHDL al PATH"
cd
echo 'export PATH="$HOME/ghdl/bin:$PATH"' >> $HOME/.bashrc
echo
echo "Obtenemos Digital"
cd
wget -c https://github.com/hneemann/Digital/releases/latest/download/Digital.zip
echo "Descomprimimos Digital"
unzip Di*zip
echo "Eliminamos el comprimido"
rm Di*zip
echo "Agregamos Digital al PATH y creamos un alias para ejecutarlo"
cd
echo 'export PATH="$HOME/Digital:$PATH"' >> $HOME/.bashrc
echo 'alias digital=Digital.sh' >> $HOME/.bashrc
echo "Instalacion finalizada, reiniciar sistema"
