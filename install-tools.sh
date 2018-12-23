#!/usr/bin/env bash
HERE=`cd $(dirname $0); pwd`

# basic tool
sudo apt-get install -y openssh-server tmux htop ncdu build-essential ack

sudo apt-get install -y cmake git unzip zip

sudo apt-get install -y python-dev python3-dev python-pip python3-pip

sudo apt-get install linux-headers-$(uname -r)
