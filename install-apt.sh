#!/usr/bin/env bash
HERE=`cd $(dirname $0); pwd`

# setup apt
[ ! -f /etc/apt/sources.list.old ] && sudo mv /etc/apt/sources.list /etc/apt/sources.list.old
sudo cp $HERE/sources.list /etc/apt/sources.list
sudo apt-get update
sudo apt-get upgrade

# git config file
cp $HERE/.gitconfig ~/.gitconfig

# basic tool
sudo apt-get install htop ncdu build-essetial
