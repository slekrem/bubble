#!/bin/bash

DOCKER_MACHINE_NAME=bubble
DOCKER_MACHINE_STATE=$(docker-machine env $DOCKER_MACHINE_NAME)
DOCKER_MACHINE_DRIVER=virtualbox

if [[ -z $DOCKER_MACHINE_STATE ]]; then
  docker-machine create -d $DOCKER_MACHINE_DRIVER $DOCKER_MACHINE_NAME
elif [[ $DOCKER_MACHINE_STATE == "Stopped" ]]; then
  docker-machine start $DOCKER_MACHINE_NAME
fi

set -e

eval $(docker-machine env $DOCKER_MACHINE_NAME)

cd ./src/

#docker-compose stop
#docker-compose rm -fa

docker-compose build #--no-cache
docker-compose up

echo "ip: " $(docker-machine ip $DOCKER_MACHINE_NAME)
