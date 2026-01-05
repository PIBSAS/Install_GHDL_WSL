#!/bin/bash
sudo apt update
git clone https://github.com/ghdl/ghdl.git
sudo apt install -y zlib1g-dev gcc make clang llvm gnat wget unzip openjdk-25-jdk gtkwave
cd ghdl
./configure --with-llvm-config
make
sudo make install
ghdl --version
cd
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
