#!/usr/bin/env bash

sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg

opam install -y ocp-index ocp-indent

# Copy the default .emacs.d, compile ProofGeneral
cp -rT $HOME/Coq311/courseware/emacs.d/ $HOME/.emacs.d/
cd $HOME/.emacs.d/ProofGeneral-4.2; make compile
