#!/usr/bin/env bash

docker network create nginx-proxy
docker-compose build
docker-compose up -d --remove-orphans