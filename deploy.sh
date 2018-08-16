#!/bin/bash

NET=test

docker stop trae
docker rm trae
docker run --name trae -d --privileged -p 8080:8080 -p 80:80 --network $NET -v $PWD/traefik.toml:/etc/traefik/traefik.toml:ro traefik:alpine
