#!/bin/bash

#download assinador SERPO

wget -qO - https://assinadorserpro.estaleiro.serpro.gov.br/repository/AssinadorSERPROpublic.asc | sudo apt-key add -


sudo apt-get install -y \
software-properties-common \
gdebi

#download dependências
sudo add-apt-repository 'deb https://www.assinadorserpro.estaleiro.serpro.gov.br/repository/ universal stable' 

wget http://mirrors.kernel.org/ubuntu/pool/main/g/glibc/multiarch-support_2.23-0ubuntu11.2_amd64.deb

wget http://security.debian.org/debian-security/pool/updates/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u12_amd64.deb

wget https://s3-sa-east-1.amazonaws.com/shared-www.validcertificadora.com.br/Downloads/Linux/SafeSign.deb

sudo apt-get update 

#instalação de dependências

sudo gdebi multiarch-support_2.28-10_amd64.deb
sudo gdebi libssl1.0.0_1.0.1t-1+deb8u5_amd64.deb
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
    libtiff5 \
    libwxgtk-media3.0-gtk3-dev \
    libwxgtk* \
    opensc \
    pcsc-tools \
    pcscd \
    unzip \
    
    #download do safesign valid
wget https://s3-sa-east-1.amazonaws.com/shared-www.validcertificadora.com.br/Downloads/Linux/SafeSign.deb

gdebi libwxgtk2.8-0_2.8.12.1+dfsg2-dmo4_amd64.deb

#inserção do usuário no grupo scard
sudo adduser $USER scard 

sudo addgroup scard 

sudo rm Safe* lib*

#instalação do assinador SERPRO
sudo apt install assinador-serpro -y
