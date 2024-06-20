# Instalar GHDL en Ubuntu con WSL
<p align="center">
<img src="https://assets.ubuntu.com/v1/a7e3c509-Canonical%20Ubuntu.svg" style="width:50%" />
<image src ="https://github.com/ghdl/ghdl/blob/master/logo/banner.png?raw=true"/>
</p>

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
echo 'export PATH="$HOME/ghdl/bin:$PATH"' >> $HOME/.bashrc
source .bashrc
````
### Obtenemos Digital un fork de LogiSim:
````bash
cd
wget -c https://github.com/hneemann/Digital/releases/latest/download/Digital.zip
unzip Di*zip
rm Di*zip
````
### Creamos un alias para Digital, asi lo lanzamos escribiendo en la Terminal ```` digital ````:
````bash
cd
echo 'export PATH="$HOME/Digital:$PATH"' >> $HOME/.bashrc
echo 'alias digital=Digital.sh' >> $HOME/.bashrc
source .bashrc
````

# Instalar GHDL en Debian con WSL
<p align="center">
<img src="https://www.debian.org/logos/openlogo.svg" style="width:50% height:100%" />
<image src ="https://github.com/ghdl/ghdl/blob/master/logo/banner.png?raw=true"/>
</p>


GHDL Requiere GLIBC 2.34 y Debian Bullseye tiene 2.31 , si instalamos desde Microsoft Store obtendremos Debian Bookworm que viene con GLIBC 2.36

### Bullseye:
````bash
wsl --install Debian
````
### Actualizamos e instalamos dependencias:
### Bullseye:
````bash
sudo apt update
sudo apt install -y wget zlib1g-dev gnat-10 unzip openjdk-17-jdk gtkwave
````
## Bookworm:
Usando Winget evitamos usar la interfaz grafica
````bash
winget install Debian -s msstore
````
O directamente desde el repo de winget:
````bash
winget install Debian.Debian
````
Lo lanzamos con:
````bash
debian
````
Creamos usuario y contraseña.

### Agregamos temporalmente la repo de Bullseye para obtener gnat-10:
````bash
echo 'deb http://deb.debian.org/debian bullseye main' | sudo tee -a /etc/apt/sources.list
````

### Actualizamos e instalamos dependencias:
````bash
sudo apt update
sudo apt install -y gnat-10
sudo apt install -y wget zlib1g-dev unzip openjdk-17-jdk gtkwave
````
### Eliminamos el repo de bullseye(Opcional, podemos dejarlo):
````bash
sudo sed -i '$ d' /etc/apt/sources.list
sudo apt update
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
echo 'export PATH="$HOME/ghdl/bin:$PATH"' >> $HOME/.bashrc
source .bashrc
````
### Obtenemos Digital un fork de LogiSim:
````bash
cd
wget -c https://github.com/hneemann/Digital/releases/latest/download/Digital.zip
unzip Di*zip
rm Di*zip
````
### Creamos un alias para Digital, asi lo lanzamos escribiendo en la Terminal ```` digital ````:
````bash
cd
echo 'export PATH="$HOME/Digital:$PATH"' >> $HOME/.bashrc
echo 'alias digital=Digital.sh' >> $HOME/.bashrc
source .bashrc
````

# Windows:
### Cygwin necesario para GTKWave:
Visor de diagrama temporal archivo `` .vcd `` generado con GHDL.
- [Cygwin](https://www.cygwin.com/install.html)
- [Descarga directa](https://www.cygwin.com/setup-x86_64.exe)

### Ejecutamos el instalador:
-

- [GHDL](https://ghdl-rad.readthedocs.io/en/latest/examples/quick_start/README.html)
- [Digital](https://github.com/hneemann/Digital/releases/)
