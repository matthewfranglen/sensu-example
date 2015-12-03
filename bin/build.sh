#!/bin/bash

COMMAND=`readlink -f ${0}`
BIN_FOLDER=`dirname "${COMMAND}"`
. "${BIN_FOLDER}/lib"

main () {
    build_base_image                  &&
        build_api_image               &&
        build_client_image            &&
        build_server_image            &&
        build_standalone_client_image &&
        build_uchiwa_image
}


build_base_image () {
    (
        cd "${DOCKER_FOLDER}/base"
        docker build --tag matthewfranglen/sensu-base .
    )
}

build_api_image () {
    (
        cd "${DOCKER_FOLDER}/api"
        docker build --tag matthewfranglen/sensu-api .
    )
}

build_client_image () {
    (
        cd "${DOCKER_FOLDER}/client"
        docker build --tag matthewfranglen/sensu-client .
    )
}

build_server_image () {
    (
        cd "${DOCKER_FOLDER}/server"
        docker build --tag matthewfranglen/sensu-server .
    )
}

build_standalone_client_image () {
    (
        cd "${DOCKER_FOLDER}/standalone-client"
        docker build --tag matthewfranglen/sensu-standalone-client .
    )
}

build_uchiwa_image () {
    (
        cd "${DOCKER_FOLDER}/uchiwa"
        docker build --tag matthewfranglen/sensu-uchiwa .
    )
}

main
