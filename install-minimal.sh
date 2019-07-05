#!/usr/bin/env bash
HERE=`cd $(dirname $0); pwd`

# see https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/
[ ! -f /etc/apt/sources.list.old ] && sudo mv /etc/apt/sources.list /etc/apt/sources.list.old
sudo cp $HERE/sources.list /etc/apt/sources.list
sudo apt-get update

# copy files
cp $HERE/.gitconfig ~/.gitconfig
cp $HERE/.tmux.conf ~/.tmux.conf

# basic tool
sudo apt-get install -y \
     ack \
     apt-transport-https \
     build-essential \
     ca-certificates \
     curl \
     git \
     gnupg2 \
     htop \
     ncdu \
     net-tools \
     openssh-server \
     software-properties-common \
     tmux \
     unzip \
     vim \
     zip

# setup docker
sudo apt-get remove docker docker-engine docker.io
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get install -y docker-ce
sudo mkdir -p /etc/docker && cp $HERE/daemon.json /etc/docker/daemon.json
sudo service docker restart

# cleanup
sudo apt-get autoclean && apt-get clean
