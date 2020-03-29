#!/bin/bash

NODE_VERSION=$(echo $DOCKER_TAG | cut -d "-" -f2)

if [ $DOCKER_TAG == "latest" ]
then
  docker build . --build-arg NODE_VERSION=latest -t ${IMAGE_NAME}
else
  docker build . --build-arg NODE_VERSION=${NODE_VERSION} -t ${IMAGE_NAME}
fi

