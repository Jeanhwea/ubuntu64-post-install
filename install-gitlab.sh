#!/usr/bin/env bash
HERE=`cd $(dirname $0); pwd`

sudo docker pull gitlab/gitlab-ce

# to run gitlab
# see for details: https://docs.gitlab.com/omnibus/docker/
#
# run gitlab ->
# sudo docker run --detach \
#   --hostname gitlab.avic.com \
#   --publish 443:443 --publish 80:80 --publish 2222:22 \
#   --name gitlab \
#   --restart always \
#   --volume /srv/gitlab/config:/etc/gitlab \
#   --volume /srv/gitlab/logs:/var/log/gitlab \
#   --volume /srv/gitlab/data:/var/opt/gitlab \
#   gitlab/gitlab-ce:latest
#
# view log ->
# sudo docker logs -f gitlab
#
# remove gitlab runner ->
# sudo docker stop gitlab
# sudo docker rm gitlab

# reset gitlab root password:
#
# sudo docker exec -it gitlab /bin/bash
#
# gitlab-rails console production
#
# irb(main):001:0> user = User.where(id: 1).first
# irb(main):002:0> user = user.password = 'yourpassword'
# irb(main):003:0> user.save!
#
