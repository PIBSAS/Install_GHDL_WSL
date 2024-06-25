#!/bin/bash
sudo apt update
git clone https://github.com/ghdl/ghdl.git
sudo apt install -y zlib1g-dev gcc make clang llvm gnat
cd ghdl
./configure --with-llvm-config
make
sudo make install
ghdl --version
