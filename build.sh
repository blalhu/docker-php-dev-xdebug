#!/bin/bash

while read DEFINITION; do
  VERSION=$(echo $DEFINITION | cut -d'-' -f1)
  TAG=$(echo $DEFINITION | cut -d'-' -f2)

  echo "Building VERSION $VERSION php container with tag $TAG"

  docker pull pelso/php-dev:${TAG}

  set -x
  docker buildx build \
    --platform linux/amd64,linux/arm64,linux/386 \
    --push \
    --build-arg DOCKER_TAG=${TAG} \
    --build-arg PHP_VERSION=${VERSION} \
    -t pelso/php-dev-xdebug:${TAG} \
    .
  set -v
done < build_manifest.txt