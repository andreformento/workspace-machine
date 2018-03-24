#!/bin/sh

docker-compose pull
docker-compose up -d
docker-compose exec workspace-machine /bin/zsh
docker-compose down --volumes --timeout 0
