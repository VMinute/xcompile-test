#!/bin/sh

docker build -t openttd-native-arm32 -f Dockerfile.arm32 .
time docker run --rm -v $(pwd)/../OpenTTD:/OpenTTD openttd-native-arm32:latest
