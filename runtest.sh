#!/bin/bash

echo "cloning source repo..."
cd ..
rm -fr OpenTTD
git clone https://github.com/OpenTTD/OpenTTD.git
cd -
echo "TEST 1 - local native build"
SECONDS=0
./localbuild.sh
echo "local x64 build: $SECONDS" > ./timelog
echo "TEST 2 - native build in container"
SECONDS=0
./runbuild-x64.sh
echo "x64 build in container: $SECONDS" >> ./timelog
echo "TEST 3 - cross build in container"
SECONDS=0
./runbuild-cross.sh
echo "cross build in container: $SECONDS" >> ./timelog
echo "TEST 4 - native arm build in emulated container"
SECONDS=0
./runbuild-arm32.sh
echo "arm build in emulated container: $SECONDS" >> ./timelog
