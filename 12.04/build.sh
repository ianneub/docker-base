#!/bin/bash

set -e

################
# update base system
################
apt-get update

################
# install base packages
################
apt-get install --no-install-recommends -y supervisor inetutils-ping dnsutils curl

################
# install dockerize
################
curl -sL https://github.com/jwilder/dockerize/releases/download/v0.0.2/dockerize-linux-amd64-v0.0.2.tar.gz | tar -C /usr/local/bin -xz

################
# clean apt
################
apt-get clean && rm -rf /var/lib/apt/lists/*
