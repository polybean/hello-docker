#!/bin/bash

set -e

base=$(realpath "$(dirname -- $0)/..")
name=$($base/mvnw help:evaluate -Dexpression=project.name -q -DforceStdout)
version=$($base/mvnw help:evaluate -Dexpression=project.version -q -DforceStdout)
DOCKER_BUILDKIT=1 docker build $base -t $name:$version --build-arg jar_file=$name-$version.jar
