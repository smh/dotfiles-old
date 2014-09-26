#!/bin/bash

apt-get update
apt-get install -y git git-core vim-nox zsh tmux
chsh -s `which zsh` vagrant
