#!/bin/bash -e

ACCT=${1:-paraglade}
NAME=${2:-git-logrotate}
VERSION=${3:-v$(date +%y%m%d%H%M%S)}

echo "build docker image version: ${VERSION}"
docker build -t $ACCT/$NAME:$VERSION .
docker push $ACCT/$NAME:$VERSION
echo "pushed docker image version: ${VERSION}"

