#!/bin/bash

set -e

sudo su - root

docker pull adityakumawat01/cicd_test

docker run -d -p 8000:8000 aadityakumawat01/cicd_test