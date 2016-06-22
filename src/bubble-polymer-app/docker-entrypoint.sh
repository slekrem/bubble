#!/bin/bash
set -e

: ${REPOSITORY?"REPOSITORY is not set"}
: ${REPOSITORY_NAME?"REPOSITORY_NAME is not set"}

echo "repository: " $REPOSITORY
echo "name: " $REPOSITORY_NAME
echo "ls: " $(ls)

git clone $REPOSITORY
cd $REPOSITORY_NAME

bower install --allow-root
polymer build

cp -r build/ /app/

exit $?
