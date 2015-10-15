#!/bin/bash

set -e -x -o pipefail

################
# update base system
################
apt-get update

################
# install base packages
################
apt-get install --no-install-recommends -y supervisor inetutils-ping dnsutils curl ca-certificates

################
# install dockerize
################
curl -L https://github.com/jwilder/dockerize/releases/download/v0.0.2/dockerize-linux-amd64-v0.0.2.tar.gz -o dockerize.tgz
tar -C /usr/local/bin -xzf dockerize.tgz
rm dockerize.tgz

################
# clean apt
################
apt-get clean && rm -rf /var/lib/apt/lists/*
