#!/usr/bin/env bash
HERE=`cd $(dirname $0); pwd`

# basic tool
sudo apt-get install -y openssh-server tmux htop ncdu build-essential ack

sudo apt-get install -y cmake git unzip zip

# for opencv
sudo apt-get install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install -y python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

# for bazel
sudo apt-get install -y pkg-config zip g++ zlib1g-dev unzip

sudo apt-get install -y python-dev python3-dev python-pip python3-pip

sudo apt-get install linux-headers-$(uname -r)
