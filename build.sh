#!/bin/sh

cd /OpenTTD
make mrproper
./configure
make clean
make
exit
