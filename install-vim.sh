#!/usr/bin/env bash
HERE=`cd $(dirname $0); pwd`

mkdir -p ~/.vim/bundle/

git clone https://github.com/tpope/vim-pathogen.git ~/.vim/bundle/pathogen
git clone https://github.com/tpope/vim-sensible.git ~/.vim/bundle/sensible
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/fugitive

mv $HERE/.vimrc ~/.vimrc

sudo apt-get install -y vim
