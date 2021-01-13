#!/bin/bash

sudo apt-get update 

sudo apt-get install -y \
    fontconfig-config \
    libasedrive-usb \
    libccid \
    libengine-pkcs11-openssl \
    libfontconfig1 \
    libjbig0 \
    libopensc-openssl \
    libp11-3 \
    libpcsc-perl \
    libpcsclite1 \
    libssl1.0.0 \
    libtiff5 \
    libwxbase3.0 \
    libwxgtk* \
    opensc \
    pcsc-tools \
    pcscd
    
sudo adduser $USER scard 

sudo addgroup scard 

wget https://s3-sa-east-1.amazonaws.com/shared-www.validcertificadora.com.br/Downloads/Safesign/Safesign.zip | grep "~" |  echo "Realizando o Download"

unzip Safesign* | grep "~"

sudo apt-get update | grep "~" | echo "Atualizando pacotes"

sudo apt-get install pcscd libccid | echo "libccid - Instalado" | grep "libccid"

sudo dpkg -i libgdbm3_1.8.3-14_amd64.deb | echo "libgdbm - Instalado" | grep "libgdbm - Instalado"

sudo dpkg -i libpng* | echo "libpng - Instalado" | grep "libpng - Instalado"

sudo dpkg -i libjpeg* | echo "libjpeg - Instalado" | grep "libjpeg - Instalado"

sudo dpkg -i libwxbase* | echo "libwxbase - Instalado" | grep "libwxbase - Instalado"

sudo dpkg -i libwxgtk* | echo "libwxgtk - Instalado"  | grep "libwxgtk - Instalado"

sudo dpkg -i  SafeSign.deb | echo "Token instalado com sucesso!" | grep "Token instalado com sucesso!"

sudo rm Safe* lib*

wget https://assinadorserpro.estaleiro.serpro.gov.br/repository/AssinadorSERPROpublic.asc | grep "~" | echo "Instalando assinador"

sudo apt-key add AssinadorSERPROpublic.asc 

sudo add-apt-repository 'deb https://www.assinadorserpro.estaleiro.serpro.gov.br/repository/ universal stable' 

sudo apt install assinador-serpro -y | echo "Assinador instalado com sucesso!" | grep "Assinador instalado com sucesso!"

sudo apt-get update 

sudo apt-get upgrade -y
