#!/bin/bash
docker image build -t typora-markdown \
	--build-arg myuid=`id -u` \
	--build-arg mygid=`id -g` \
	--build-arg myuser=`whoami` \
	--build-arg myhome=$HOME \
	. && \
sudo ln -s $(pwd)/typora-markdown.sh /usr/bin/typora-markdown-docker
