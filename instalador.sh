#!/bin/bash

sudo apt-get update 

sudo apt-get install libengine-pkcs11-openssl | echo "libengine-pkcs11-openssl - Instalado" | grep "libengine-pkcs11-openssl"

sudo apt-get install libp11-3 | echo "libp11-3 - Instalado" | grep "libp11-3"

sudo apt-get install libpcsc-perl | echo "libpcsc-perl - Instalado" | grep "libpcsc-perl"

sudo apt-get install libccid | echo "libccid - Instalado" | grep "libccid"
 
sudo apt-get install libpcsclite1 | echo "libpcsclite1 - Instalado" | grep "libpcsclite1"

sudo apt-get install pcscd | echo "pcscd - Instalado" | grep "pcscd"
 
sudo apt-get install pcsc-tools | echo "pcsc-tools - Instalado" | grep "pcsc-tools"

sudo apt-get install libasedrive-usb | echo "libasedrive-usb - Instalado" | grep "libasedrive-usb"
libasedrive-usb 
sudo apt-get install opensc | echo "opensc - Instalado" | grep "opensc"
 
sudo apt-get install libssl1.0.0 | echo "libssl1.0.0 - Instalado" | grep "libssl1.0.0"
 
sudo apt-get install libssl1.0.0 | echo "libssl1.0.0 - Instalado" | grep "libssl1.0.0"
 
sudo apt-get install libopensc-openssl | echo "libopensc-openssl - Instalado" | grep "libopensc-openssl"
 
sudo apt-get install libjbig0 | echo "libjbig0 - Instalado" | grep "libjbig0"
 
sudo apt-get install libtiff5 | echo "libtiff5 - Instalado" | grep "libtiff5"

sudo apt-get install fontconfig-config | echo "fontconfig-config - Instalado" | grep "fontconfig-config"

sudo apt-get install libfontconfig1 | echo "libfontconfig1 - Instalado" | grep "libfontconfig1"

sudo apt-get install libwxbase3.0 | echo "libwxbase3.0 - Instalado" | grep "libwxbase3.0"

sudo apt-get install libwxgtk* | echo "libwxgtk* - Instalado" | grep "libwxgtk*"

sudo apt-get install libpcsclite1 | echo "libpcsclite1 - Instalado" | grep "libpcsclite1"
 
sudo apt-get install libccid | echo "libccid - Instalado" | grep "libccid"

sudo apt-get install pcscd | echo "pcscd - Instalado" | grep "pcscd"

sudo adduser $USER scard 

sudo addgroup scard 

wget https://s3-sa-east-1.amazonaws.com/shared-www.validcertificadora.com.br/Downloads/Safesign/Safesign.zip | grep "~" |  echo "Realizando o Download"


unzip Safesign* | grep "~"

sudo apt-get update | grep "~" | echo "Atualizando pacotes"

sudo apt-get install pcscd | echo "pcscd - Instalado" | grep "pcscd"

sudo apt-get install libccid | echo "libccid - Instalado" | grep "libccid"

sudo dpkg -i libgdbm3_1.8.3-14_amd64.deb | echo "libgdbm - Instalado" | grep "libgdbm - Instalado"

sudo dpkg -i libpng* | echo "libpng - Instalado" | grep "libpng - Instalado"

sudo dpkg -i libjpeg* | echo "libjpeg - Instalado" | grep "libjpeg - Instalado"

sudo dpkg -i libwxbase* | echo "libwxbase - Instalado" | grep "libwxbase - Instalado"

sudo dpkg -i libwxgtk* | echo "libwxgtk - Instalado"  | grep "libwxgtk - Instalado"

sudo apt-get update -y | grep "~"

sudo dpkg -i  SafeSign.deb | echo "Token instalado com sucesso!" | grep "Token instalado com sucesso!"

sudo rm Safe* lib*

wget https://assinadorserpro.estaleiro.serpro.gov.br/repository/AssinadorSERPROpublic.asc | grep "~" | echo "Instalando assinador"

sudo apt-key add AssinadorSERPROpublic.asc 

sudo add-apt-repository 'deb https://www.assinadorserpro.estaleiro.serpro.gov.br/repository/ universal stable' 

sudo apt update 

sudo apt install assinador-serpro -y | echo "Assinador instalado com sucesso!" | grep "Assinador instalado com sucesso!"

sudo apt-get update 

sudo apt-get upgrade -y

echo "Você agora está livre de uma vez por todas do JANELAS. Abrace a liberdade."