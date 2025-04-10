#!/bin/bash

set -e

sudo su - root

echo "Running docker stop"
docker stop $(docker ps -a -q)
echo "Running docker rm"
docker rm $(docker ps -a -q)