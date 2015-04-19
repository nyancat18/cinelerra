#!/bin/bash

### Script para ejecutar Cinelerra-4.6.mod.noarch tras haberlo compilado ##
### Autor: triceratops1 ###
### E-mail: taringa.net/triceratops1 ###
### Fecha de creacion: 07/04/2015 ###
### Por el momento solo sirve en Fedora y Ubuntu ###
echo "EL SCRIPT PARA ARCH NO HA SIDO TESTEADO, USAD A SU PROPIO RIESGO"
echo "añadiendo dependencias"

pacman -S base-devel libpng freeglut libxv ncurses libva openexr

echo "dependencias instaladas"

./configure

echo "configuración completa"

make -j2

echo "Cinelerra compilado, ahora ejecuta cinelerra.sh"

sh cinelerra-4.6/cinelerra-4.6.mod/hola.sh
