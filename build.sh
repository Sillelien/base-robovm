#!/usr/bin/env ash
set -ex
apk -U add git wget openssl libstdc++ g++
wget "https://get.docker.com/builds/Linux/x86_64/docker-latest" -O /usr/local/bin/docker
chmod 755 /usr/local/bin/docker
wget "http://download.robovm.org/robovm-1.4.0.tar.gz"
tar xvfz robovm-1.4.0.tar.gz
mv robovm-1.4.0 /usr/local/robovm

