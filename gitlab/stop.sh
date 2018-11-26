#!/usr/bin/env bash
HERE=`cd $(dirname $0); pwd`

sudo docker stop gitlab
sudo docker rm gitlab
