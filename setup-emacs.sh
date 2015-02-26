#!/usr/bin/env bash

sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg

opam install -y ocp-index ocp-indent

# download ProofGeneral, unpack it and move it to .emacs.d
wget http://proofgeneral.inf.ed.ac.uk/releases/ProofGeneral-4.2.tgz
tar xpzf ProofGeneral-4.2.tgz
mv ProofGeneral-4.2 $HOME/.emacs.d/

# cleanup
rm -r ProofGeneral-4.2.tgz ProofGeneral

# Copy the default .emacs.d, compile ProofGeneral
cp -rT $HOME/Coq311/courseware/emacs.d/ $HOME/.emacs.d/
cd $HOME/.emacs.d/ProofGeneral-4.2; make compile
