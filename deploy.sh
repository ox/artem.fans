#!/bin/bash

COMMIT="$(git rev-parse --short HEAD)"
TAG="www.artem.fans:$COMMIT"
echo "Deploying $TAG"
set -x
docker-compose -f docker-compose.yml up -d --build-arg TAG=$TAG
