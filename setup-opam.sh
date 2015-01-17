#!/usr/bin/env bash

sudo add-apt-repository ppa:avsm/ppa
sudo apt-get update
sudo apt-get install -y build-essential m4 zlib1g-dev ocaml opam camlp4-extra zip

export OPAMYES=1
export OPAMJOBS=2

opam init -a -y
eval `opam config env`

opam install -y utop merlin pa_ounit qcheck coq coqide
