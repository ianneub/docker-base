#!/bin/bash

set -e

apt-get update
apt-get install -y supervisor inetutils-ping dnsutils

apt-get clean && rm -rf /var/lib/apt/lists/*
