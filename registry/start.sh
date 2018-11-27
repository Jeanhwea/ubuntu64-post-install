#!/usr/bin/env bash
HERE=`cd $(dirname $0); pwd`

sudo docker run --detach \
  --publish 5000:5000 \
  --name registry \
  --restart always \
  --volume /srv/registry:/var/lib/registry \
  registry:20181127

# add insecure-registries to allow connect
#
##/etc/docker/daemon.json
##
# {
#  "insecure-registries" : ["<ip>:5000"]
# }
#
