#!/bin/bash

### Script para ejecutar Cinelerra-4.6.mod.noarch tras haberlo compilado ##
### Autor: triceratops1 ###
### E-mail: taringa.net/triceratops1 ###
### Fecha de creacion: 07/04/2015 ###
### Por el momento solo sirve en Fedora y Ubuntu ###

echo "añadiendo dependencias"

  zypper -n install nasm gcc gcc-c++ zlib-devel texinfo libpng16-devel \
    freeglut-devel libXv-devel alsa-devel libbz2-devel ncurses-devel \
    libXinerama-devel freetype-devel libXft-devel giblib-devel ctags \
    bitstream-vera-fonts xorg-x11-fonts-core xorg-x11-fonts dejavu-fonts \
    openexr-devel libavc1394-devel festival-devel libjpeg8-devel libdv-devel \
    libdvdnav-devel libdvdread-devel libiec61883-devel libuuid-devel \
    ilmbase-devel fftw3-devel libsndfile-devel libtheora-devel flac-devel


echo "dependencias instaladas"

    if [ ! -f /usr/lib/libtermcap.so ]; then
      ln -s libtermcap.so.2 /usr/lib/libtermcap.so
    fi

echo "libreria parcheada"

./configure

echo "configuración completa"

make -j2

echo "Cinelerra compilado, ahora ejecuta cinelerra.sh"


sh cinelerra-4.6/cinelerra-4.6.mod/hola.sh
