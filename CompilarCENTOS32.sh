#!/bin/bash

### Script para ejecutar Cinelerra-4.6.mod.noarch tras haberlo compilado ##
### Autor: triceratops1 ###
### E-mail: taringa.net/triceratops1 ###
### Fecha de creacion: 07/04/2015 ###
### Por el momento solo sirve en Fedora y Ubuntu ###

echo "añadiendo dependencias"

  yum -y install nasm libavc1394-devel libusb-devel flac-devel \
    libjpeg-devel libdv-devel libdvdnav-devel libdvdread-devel \
    libtheora-devel libiec61883-devel uuid-devel giflib-devel \
    ncurses-devel ilmbase-devel fftw-devel OpenEXR-devel \
    libsndfile-devel libXft-devel libXinerama-devel libXv-devel \
    xorg-x11-fonts-misc xorg-x11-fonts-cyrillic xorg-x11-fonts-Type1 \
    xorg-x11-fonts-ISO8859-1-100dpi xorg-x11-fonts-ISO8859-1-75dpi \
    libpng-devel bzip2-devel zlib-devel kernel-headers \
    libavc1394 festival-devel libiec61883-devel flac-devel \
    libsndfile-devel libtheora-devel linux-firmware ivtv-firmware http://archives.fedoraproject.org/pub/fedora/linux/releases/21/Everything/i386/os/Packages/y/yasm-1.2.0-7.fc21.i686.rpm


echo "libreria parcheada"

./configure

echo "configuración completa"

make -j2

echo "Cinelerra compilado, ahora ejecuta cinelerra.sh"
