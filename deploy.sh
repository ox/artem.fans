#!/bin/bash

COMMIT="$(git rev-parse --short HEAD)"
TAG="www.artem.fans:$COMMIT"

set -x
TAG=$TAG docker-compose -f docker-compose.yml up --build -d --remove-orphans 
