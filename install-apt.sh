#!/usr/bin/env bash
HERE=`cd $(dirname $0); pwd`

# setup apt
[ ! -f /etc/apt/sources.list.old ] && sudo mv /etc/apt/sources.list /etc/apt/sources.list.old
sudo cp $HERE/sources.list /etc/apt/sources.list
sudo apt-get update
sudo apt-get upgrade

# basic tool
sudo apt-get install tmux htop ncdu build-essetial

# git config file
cp $HERE/.gitconfig ~/.gitconfig
cp $HERE/.tmux.conf ~/.tmux.conf
