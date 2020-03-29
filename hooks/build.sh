#!/bin/bash

NODE_VERSION=$(echo $DOCKER_TAG | cut -d "-" -f2)

if [ $DOCKER_TAG == "latest" ]
then
  docker build . --build-arg NODE_VERSION=${DOCKER_TAG} -t ${IMAGE_NAME}
else
  docker build . --build-arg NODE_VERSION=${NODE_VERSION} -t ${IMAGE_NAME}
fi

