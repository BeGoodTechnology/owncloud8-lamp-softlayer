#!/bin/bash

yum install -y git
yum install -y epel-release
yum install -y ansible

mkdir ~/src/
cd ~/src
rm -rf owncloud8-lamp-softlayer
unset SSH_ASKPASS
git clone https://github.com/BeGoodTechnology/owncloud8-lamp-softlayer.git
cd owncloud8-lamp-softlayer
ansible-playbook owncloud8-lamp-softlayer.yml
