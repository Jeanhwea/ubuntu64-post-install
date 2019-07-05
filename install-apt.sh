#!/usr/bin/env bash
HERE=`cd $(dirname $0); pwd`

# see https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/
[ ! -f /etc/apt/sources.list.old ] && sudo mv /etc/apt/sources.list /etc/apt/sources.list.old
sudo cp $HERE/sources.list /etc/apt/sources.list
sudo apt-get update && upgrade -y
