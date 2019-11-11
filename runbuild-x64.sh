#!/bin/sh

docker build -t openttd-native-x64 -f Dockerfile.x64 .
time docker run --rm -v $(pwd)/../OpenTTD:/OpenTTD openttd-native-x64:latest
