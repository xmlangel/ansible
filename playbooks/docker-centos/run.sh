#!/bin/bash
NAME="openssh4"
docker run -d --name $NAME -h openssh xmlangel/centos-openssh
docker exec $NAME ifconfig eth0
