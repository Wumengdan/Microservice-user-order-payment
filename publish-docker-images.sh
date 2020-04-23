#!/bin/bash -e

BRANCH=$(git rev-parse --abbrev-ref HEAD)

export DOCKER_IMAGE_TAG=latest

docker login -u ${DOCKER_USER_ID?} -p ${DOCKER_PASSWORD?}

./gradlew javaDevelopmentComposePull || echo no image to pull

./gradlew javaDevelopmentComposeBuild

./gradlew javaDevelopmentComposePush

