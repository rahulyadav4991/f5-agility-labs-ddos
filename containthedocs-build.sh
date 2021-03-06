#!/usr/bin/env bash

set -x

COMMAND="make -C docs html"

. ./containthedocs-image

exec sudo docker run --rm \
  -v "$PWD":"$PWD" --workdir "$PWD" \
  ${DOCKER_RUN_ARGS} \
  -e "LOCAL_USER_ID=$(id -u)" \
  ${DOC_IMG} ${COMMAND}
