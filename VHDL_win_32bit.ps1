Write-Host "Script de instalacion para VHDL aun debemos agregar las variables de entorno!!!"

Write-Host "Cambiar al directorio de descargas"
cd $HOME\Downloads\

Write-Host "Descargar y extraer GHDL"
wget https://github.com/ghdl/ghdl/releases/download/v4.1.0/ghdl-MINGW32.zip -OutFile ghdl-MINGW32.zip
Expand-Archive ghdl*.zip -DestinationPath C:\
Remove-Item ghdl-MINGW32.zip
cd ..

Write-Host "Descargar y extraer Digital"
cd $HOME\Downloads\
wget https://github.com/hneemann/Digital/releases/latest/download/Digital.zip -OutFile Digital.zip
Expand-Archive Di*.zip -DestinationPath C:\
Remove-Item Digital.zip
cd ..

Write-Host "Descargar y extraer GTKWave"
cd $HOME\Downloads\
Start-BitsTransfer -Source https://sourceforge.net/projects/gtkwave/files/gtkwave-3.3.100-bin-win32/gtkwave-3.3.100-bin-win32.zip/download -Destination gtkwave.zip
Expand-Archive gtk*.zip -DestinationPath C:\
Remove-Item gtk*.zip
cd ..

Write-Host "Instalar Java 8 y Notepad++ usando winget"
winget install "Java 8" --silent
winget install "notepad++" --silent
