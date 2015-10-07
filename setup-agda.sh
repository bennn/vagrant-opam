#!/usr/bin/env bash

sudo apt-get install -y libgmp-dev zlib1g-dev libncurses5-dev
sudo apt-get install -y haskell-platform
sudo apt-get install -y agda-mode agda-stdlib

cabal update
cabal install cabal-install
cabal install alex happy cpphs Agda

agda-mode setup
agda-mode compile
# TODO emacs environment?

# bonus
cabal install hoogle hlint
