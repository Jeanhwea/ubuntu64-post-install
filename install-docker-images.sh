#!/usr/bin/env bash
HERE=`cd $(dirname $0); pwd`

sudo docker pull gitlab/gitlab-ce
sudo docker pull registry

# the initial root password is 5iveL!fe, after login you are required to set a
# unique password.
