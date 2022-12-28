#! /bin/bash

docker build -t image_docker .
docker run --name task1_container image_docker