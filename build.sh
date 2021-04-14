#!/bin/sh

VERSION=0.0.1
IMAGE_TAG=lldpad-ubi8
REPO=quay.io/xymox

podman build -t ${IMAGE_TAG} --rm -f Dockerfile.ubi8 .

podman tag ${IMAGE_TAG} ${REPO}/${IMAGE_TAG}:${VERSION}
podman push ${REPO}/${IMAGE_TAG}:${VERSION}
