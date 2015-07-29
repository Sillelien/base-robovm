#!/usr/bin/env bash
set -ex
docker pull sillelien/jessy:master
docker build -t robobase .
docker run -it robobase 
