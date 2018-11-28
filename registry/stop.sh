#!/usr/bin/env bash
HERE=`cd $(dirname $0); pwd`

sudo docker stop registry
sudo docker rm registry
