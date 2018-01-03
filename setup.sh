#!/bin/bash

git submodule init
git submodule update --recursive --remote

stow zsh
stow vim
stow config
stow git
stow ag
