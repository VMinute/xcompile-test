#!/bin/sh

# install docker
echo "Installing docker..."
apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install docker-ce
usermod -aG docker $1

# enable arm32 emulation in docker
echo "Enabling qemu for docker containers..."
docker run --rm --privileged docker/binfmt:66f9012c56a8316f9244ffd7622d7c21c1f6f28d

# add libraries required for local build
echo "Installing libraries for local build..."
apt-get update && apt-get install -y \
    git \
    build-essential \
    zlib1g-dev \
    liblzo2-dev \
    liblzma-dev \
    libpng-dev \
    libfreetype6-dev \
    libfontconfig1-dev \
    libicu-dev \
    libsdl2-dev \
