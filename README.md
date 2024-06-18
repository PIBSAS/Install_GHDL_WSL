# Instalar GHDL en Ubuntu con WSL Usar este

````bash
wsl --install
````
### Actualizamos e instalamos dependencias:
````bash
sudo apt update
sudo apt install -y wget zlib1g-dev gnat-10 unzip openjdk-19-jdk gtkwave
````

### Obtenemos GHDL:
````bash
mkdir ghdl
wget https://github.com/ghdl/ghdl/releases/download/v4.1.0/ghdl-gha-ubuntu-22.04-gcc.tgz -P ghdl/
cd ghdl
tar -xzvf ghdl*.tgz
rm g*tgz
````
### Agregamos GHDL a .bashrc:
````bash
cd
echo "export PATH=$PATH:$HOME/ghdl/bin/" >> $HOME/.bashrc
````
### Obtenemos Digital un fork de LogiSim:
````bash
cd
wget -c https://github.com/hneemann/Digital/releases/latest/download/Digital.zip
unzip Di*zip
rm Di*zip
````
### Creamos un alias para Digital:
````bash
cd
echo "export PATH=$PATH:$HOME/Digital/" >> $HOME/.bashrc
echo >> $HOME/.bashrc
echo "alias digital=Digital.sh" >> $HOME/.bashrc
````

# Instalar GHDL en Debian con WSL
GHDL Requiere GLIBC 2.34 y debian tiene 2.31 usar ubuntu
````bash
wsl --install Debian
````
### Actualizamos e instalamos dependencias:
````bash
sudo apt update
sudo apt install -y wget zlib1g-dev gnat-10 unzip openjdk-17-jdk gtkwave
````
### Obtenemos GHDL:
````bash
mkdir ghdl
wget https://github.com/ghdl/ghdl/releases/download/v4.1.0/ghdl-gha-ubuntu-22.04-gcc.tgz -P ghdl/
cd ghdl
tar -xzvf ghdl*.tgz
rm g*tgz
````
### Agregamos GHDL a .bashrc:
````bash
cd
echo "export PATH=$PATH:$HOME/ghdl/bin/" >> $HOME/.bashrc
````
### Obtenemos Digital un fork de LogiSim:
````bash
cd
wget -c https://github.com/hneemann/Digital/releases/latest/download/Digital.zip
unzip Di*zip
rm Di*zip
````
### Creamos un alias para Digital:
````bash
cd
echo "export PATH=$PATH:$HOME/Digital/" >> $HOME/.bashrc
echo >> $HOME/.bashrc
echo "alias digital=Digital.sh" >> $HOME/.bashrc
````

- [GHDL](https://ghdl-rad.readthedocs.io/en/latest/examples/quick_start/README.html)
- [Digital](https://github.com/hneemann/Digital/releases/)
