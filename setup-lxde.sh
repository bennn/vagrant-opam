#!/usr/bin/env bash

set -ex

sudo apt-get install -y lxde || true
sudo /usr/share/debconf/fix_db.pl
sudo apt-get install -y lxde chromium-browser

sudo sed "s/# autologin=dgod/autologin=vagrant/" -i /etc/lxdm/lxdm.conf
sudo passwd -d vagrant

sudo apt-get install -y chromium-browser

mkdir -p ~/.config
cp -rT Coq311/courseware/config ~/.config
