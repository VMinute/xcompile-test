#!/bin/sh

docker build -t openttd-cross-arm32 -f Dockerfile.cross .
time docker run --rm -v $(pwd)/../OpenTTD:/OpenTTD openttd-cross-arm32:latest
