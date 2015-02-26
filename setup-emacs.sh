#!/usr/bin/env bash

sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg

opam install -y ocp-index ocp-indent

# install wget if it's not already there
if [ ! `which wget` ]
then
    sudo apt-get install wget -y
fi


# Copy the default .emacs.d
cp -rT $HOME/Coq311/courseware/emacs.d/ $HOME/.emacs.d/
cd $HOME/.emacs.d

# download and unpack ProofGeneral
wget http://proofgeneral.inf.ed.ac.uk/releases/ProofGeneral-4.2.tgz
tar xpzf ProofGeneral-4.2.tgz
rm ProofGeneral-4.2.tgz ProofGeneral
cd ProofGeneral-4.2
make compile
