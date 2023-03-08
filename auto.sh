#!/bin/bash
#git clone https://github.com/prathamcbh/docker-webserver.git /home/ec2-user/docker/weberver/
cd /home/ec2-user/docker/weberver/
git pull
docker build -t geweb /home/ec2-user/docker/weberver/
docker container rm -f geweb
docker run -itd --name geweb -p 80:80 geweb
