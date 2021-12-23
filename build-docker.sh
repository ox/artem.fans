#!/bin/bash


COMMIT="$(git rev-parse --short HEAD)"
TAG="www.artem.fans:$COMMIT"
echo "Building docker image $TAG"
docker build -t $TAG .
