#!/bin/sh
cur_image=`sudo docker ps | grep instance_config | awk '{print $1}'`
echo "Found image is ${cur_image}"
echo "Stopping ${cur_image}"; sudo docker stop ${cur_image} && \
echo "Removing Image"; sudo docker rm instance_config && \
echo "Building Image"; sudo docker build -t instance_config:latest . && \
echo "Pruning images"; sudo docker image prune -f && \
echo "Starting Container"; sudo docker run --name instance_config -d -p 5000:5000 --rm instance_config:latest