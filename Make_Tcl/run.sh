#!/usr/bin/env bash


# check if docker is running
docker_state= $(docker info >/dev/null 2>&1)
if [[ $? -ne 0 ]]; then
    echo "Docker does not seem to be running, run it first and retry"
    exit 1
fi

# pull the latest image
docker pull parflow/parflow:latest

docker run --rm -ti -v $(pwd):/data/ parflow/parflow:latest simulation.tcl 1 1 1


