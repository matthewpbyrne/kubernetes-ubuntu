# Script extracted from https://docs.docker.com/engine/installation/linux/ubuntulinux/

## Manage Packages
export DOCKER_LIST=/etc/apt/sources.list.d/docker.list
export DOCKER_ENTRY="deb https://apt.dockerproject.org/repo ubuntu-trusty main"

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates
sudo apt-key adv \
    --keyserver hkp://p80.pool.sks-keyservers.net:80 \
      --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

sudo touch $DOCKER_LIST
grep -q -F "$DOCKER_ENTRY" $DOCKER_LIST \
    || (echo $DOCKER_ENTRY | sudo tee --append $DOCKER_LIST)

sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-cache policy docker-engine

## Install Docker
sudo apt-get install linux-image-extra-$(uname -r)
sudo apt-get install docker-engine
sudo service docker start
sudo docker run hello-world
