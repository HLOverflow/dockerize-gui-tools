#!/bin/bash
docker image build -t charles-proxy \
	--build-arg myuid=`id -u` \
	--build-arg mygid=`id -g` \
	--build-arg myuser=`whoami` \
	--build-arg myhome=$HOME \
	. && \
sudo ln -s $(pwd)/charles-proxy.sh /usr/bin/charles-proxy-docker
