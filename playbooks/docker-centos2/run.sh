#!/bin/bash
NAME="openssh4"
docker run --privileged  -d --name $NAME xmlangel/centos /usr/sbin/init 
#docker run --privileged  -d --name $NAME xmlangel/centos
