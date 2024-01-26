#!/bin/bash

DOCKER_USERNAME="ruchikasoni10"
APP_NAME="basic-service"
GIT_COMMIT_HASH=$(git rev-parse --short HEAD)
DOCKER_IMAGE_NAME="${DOCKER_USERNAME}/${APP_NAME}:${GIT_COMMIT_HASH}"

docker build -t "${DOCKER_IMAGE_NAME}" --label "version=${GIT_COMMIT_HASH}" .
docker login
docker push "${DOCKER_IMAGE_NAME}"

echo "Image ${DOCKER_IMAGE_NAME} pushed to Docker Hub."
