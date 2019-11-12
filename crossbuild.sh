#!/bin/sh

cd /OpenTTD
#export CC=arm-linux-gnueabihf-gcc
#export CXX=arm-linux-gnueabihf-gcc
export PKG_CONFIG_LIBDIR=/usr/lib/arm-linux-gnueabihf/pkgconfig

make mrproper
./configure --host=arm-linux-gnueabihf
make clean
make
exit
