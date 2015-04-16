#!/bin/bash

### Script para ejecutar Cinelerra-4.6.mod.noarch tras haberlo compilado ##
### Autor: triceratops1 ###
### E-mail: taringa.net/triceratops1 ###
### Fecha de creacion: 07/04/2015 ###
### Por el momento solo sirve en Fedora y Ubuntu ###

echo "añadiendo dependencias"

 apt-get -y install apt-file sox nasm yasm g++ build-essential libz-dev texinfo \
    libpng-dev freeglut3-dev libxv-dev libasound2-dev libbz2-dev \
    libncurses5-dev libxinerama-dev libfreetype6-dev libxft-dev giblib-dev \
    exuberant-ctags ttf-bitstream-vera xfonts-75dpi xfonts-100dpi \
    fonts-dejavu libopenexr-dev libavc1394-dev festival-dev \
    libdc1394-22-dev libiec61883-dev libesd0-dev libflac-dev \
    libsndfile1-dev libtheora-dev git


echo "dependencias instaladas"

./configure

echo "configuración completa"

make -j2

echo "Cinelerra compilado, ahora ejecuta cinelerra.sh"
