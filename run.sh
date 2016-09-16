#!/bin/bash

docker run \
  -e environment=production \
  -e name=Mark \
  -it -p 80 \
  tiller-docker-example

