#!/usr/bin/env bash
HERE=`cd $(dirname $0); pwd`

# see https://mirrors.tuna.tsinghua.edu.cn/help/docker-ce/

sudo apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
sudo apt-get remove docker docker-engine docker.io
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce

# accelerate downloading
# http://www.docker-cn.com/registry-mirror
sudo mkdir -p /etc/docker
sudo cp $HERE/daemon.json /etc/docker/daemon.json
sudo service docker restart
