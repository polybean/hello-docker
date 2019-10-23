#!/bin/bash

set -e

base=$(realpath "$(dirname -- $0)/..")
name=$($base/mvnw help:evaluate -Dexpression=project.name -q -DforceStdout)
version=$($base/mvnw help:evaluate -Dexpression=project.version -q -DforceStdout)

docker run \
  -d \
  --rm \
  -p 8080:8080 \
  $name:$version
