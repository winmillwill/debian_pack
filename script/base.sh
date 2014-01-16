#!/bin/bash
set -e

# vagrant ssh key
mkdir -p ~/.ssh
chmod 700 ~/.ssh
cd ~/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O authorized_keys
chmod 600 ~/.ssh/authorized_keys
chown -R `whoami` ~/.ssh

# simple bootstrap
sudo apt-get update -y -qq
sudo apt-get install -q -y curl
