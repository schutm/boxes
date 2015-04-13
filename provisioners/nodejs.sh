#!/bin/bash

# curl is required to install npm
sudo aptitude -y install --without-recommends curl libcurl3 librtmp0 libssh2-1

# nodejs and related binaries from nodesource (more up to date than wheezy-backports)
curl -sL https://deb.nodesource.com/setup | bash -

# install nodejs
apt-get install -y nodejs nodejs-legacy

# install build tools
apt-get install -y build-essential

# install npm from the live sources
npm -v > /dev/null || curl -L https://npmjs.org/install.sh | sudo sh
