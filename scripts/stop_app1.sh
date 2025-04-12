#!/bin/bash

set -e

# No need to switch to root if the script is already run with sudo
# sudo su - root

echo "Checking for running containers to stop..."
containers=$(docker ps -q)
if [ -n "$containers" ]; then
    echo "Running docker stop"
    docker stop $containers
else
    echo "No running containers to stop"
fi

echo "Checking for all containers to remove..."
all_containers=$(docker ps -a -q)
if [ -n "$all_containers" ]; then
    echo "Running docker rm"
    docker rm $all_containers
else
    echo "No containers to remove"
fi