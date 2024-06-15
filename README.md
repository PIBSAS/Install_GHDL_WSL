# Install_GHDL_Debian

´´´
wsl --install debian
´´´

´´´
sudo nano /etc/apt/sources.list
deb http://ftp.de.debian.org/debian bullseye main 
Ctrl + S, Ctrl + X.
´´´

´´´
sudo apt update
sudo apt install -y zlib1g-dev gnat-10
´´´

´´´
wget https://github.com/ghdl/ghdl/releases/download/v4.1.0/ghdl-gha-ubuntu-22.04-gcc.tgz
tar -xzvf ghdl*.tgz
´´´
