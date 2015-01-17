#!/usr/bin/env bash

sudo add-apt-repository ppa:avsm/ppa
sudo apt-get update
sudo apt-get install -y build-essential m4 zlib1g-dev libgtk2.0-dev libssl-dev ocaml opam camlp4-extra zip
sudo apt-get build-dep -y liblablgl-ocaml

export OPAMYES=1
export OPAMJOBS=2

opam init -a
eval `opam config env`

opam install utop merlin pa_ounit qcheck coq coqide
