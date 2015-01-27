#!/bin/bash

# curl is required to install npm
sudo aptitude -y install --without-recommends curl libcurl3 librtmp0 libssh2-1

# nodejs and related binaries are in wheezy-backports
sudo sh -c "echo deb http://http.debian.net/debian wheezy-backports main > /etc/apt/sources.list.d/wheezy-backports.list"
sudo apt-get update

# install nodejs
sudo aptitude -y -t wheezy-backports install --without-recommends nodejs nodejs-legacy libv8-3.14.5 libc-ares2

# install npm from the live sources
curl -L https://npmjs.org/install.sh | sudo sh

# and finally install less
sudo npm install -g less
