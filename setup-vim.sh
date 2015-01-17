#!/usr/bin/env bash
set -ex

sudo apt-get install -y vim vim-gnome

cp $HOME/Coq311/courseware/vimrc $HOME/.vimrc
