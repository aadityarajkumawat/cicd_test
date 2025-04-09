#!/bin/bash

set -e

sudo su - root

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)