#!/usr/bin/env bash

# Use first argument or PWD as volume mount
readonly local volume="${1:-${PWD}}"

podman run \
    --interactive \
    --pull=newer \
    --rm \
    --tty \
    --volume "${volume}":/documents:Z,rw \
        docker.io/asciidoctor/docker-asciidoctor:latest
