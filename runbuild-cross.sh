#!/bin/sh

docker run --rm -v $(pwd)/../OpenTTD:/OpenTTD openttd-cross-arm32:latest
