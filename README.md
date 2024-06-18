# Instalar GHDL en Ubuntu con WSL

````bash
wsl --install
````
Actualizamos e instalamos dependencias:
````bash
sudo apt update
sudo apt install -y wget zlib1g-dev gnat-10 unzip openjdk-19-jdk
````
````bash
mkdir ghdl
wget https://github.com/ghdl/ghdl/releases/download/v4.1.0/ghdl-gha-ubuntu-22.04-gcc.tgz -P ghdl/
cd ghdl
tar -xzvf ghdl*.tgz
rm g*tgz
````
Agregamos GHDL a .bashrc:
````bash
cd
echo "export PATH=$PATH:$HOME/ghdl/bin/" >> $HOME/.bashrc
````
# Obtenemos Digital un fork de LogiSim:
````bash
cd
wget -c https://github.com/hneemann/Digital/releases/latest/download/Digital.zip
unzip Di*zip
rm Di*zip
````
#Creamos un alias para Digital:
````bash
cd
echo "export PATH=$PATH:$HOME/Digital/" >> $HOME/.bashrc
echo >> $HOME/.bashrc
echo "alias digital=Digital.sh" >> $HOME/.bashrc
````

# Instalar GHDL en Debian con WSL

````bash
wsl --install Debian
````

````bash
sudo nano /etc/apt/sources.list
deb http://ftp.de.debian.org/debian bullseye main 
Ctrl + S, Ctrl + X.
````

````bash
sudo apt update
sudo apt install -y wget zlib1g-dev gnat-10 unzip openjdk-17-jdk
````

````bash
wget https://github.com/ghdl/ghdl/releases/download/v4.1.0/ghdl-gha-ubuntu-22.04-gcc.tgz
tar -xzvf ghdl*.tgz
````
