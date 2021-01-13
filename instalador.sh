#!/bin/bash

wget -qO - https://assinadorserpro.estaleiro.serpro.gov.br/repository/AssinadorSERPROpublic.asc | sudo apt-key add -

sudo add-apt-repository 'deb https://www.assinadorserpro.estaleiro.serpro.gov.br/repository/ universal stable' 

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

wget https://s3-sa-east-1.amazonaws.com/shared-www.validcertificadora.com.br/Downloads/Safesign/Safesign.zip

dpkg -i *.deb

sudo rm Safe* lib*

sudo apt install assinador-serpro -y

sudo apt-get update 
