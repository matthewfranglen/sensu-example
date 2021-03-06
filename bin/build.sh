#!/bin/bash

readonly COMMAND=`readlink -f ${0}`
readonly BIN_FOLDER=`dirname "${COMMAND}"`
readonly ROOT_FOLDER=`dirname "${BIN_FOLDER}"`
readonly DOCKER_FOLDER="${ROOT_FOLDER}/docker"

(
    cd "${DOCKER_FOLDER}/base"
    docker build --tag matthewfranglen/sensu-base "${@}" .
)
