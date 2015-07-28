#!/usr/bin/env ash
set -ex
cd /tmp
apk -U add git wget openssl libstdc++ g++ gcc libgcc
wget "https://get.docker.com/builds/Linux/x86_64/docker-latest" -O /usr/local/bin/docker
chmod 755 /usr/local/bin/docker
wget "http://download.robovm.org/robovm-1.4.0.tar.gz"
tar xvfz robovm-1.4.0.tar.gz
mv robovm-1.4.0 /usr/local/robovm
rm -rf /tmp/*
rm /var/cache/apk/*
which gcc

