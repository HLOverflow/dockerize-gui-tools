#!/bin/bash
docker image build -t firefox \
	--build-arg myuid=`id -u` \
	--build-arg mygid=`id -g` \
	--build-arg myuser=`whoami` \
	--build-arg myhome=$HOME \
	.
ln -s $(pwd)/firefox.sh /usr/bin/firefox-docker
