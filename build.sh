#!/usr/bin/env bash

docker network create nginx-proxy

read -p "Use Docker cache? [Y/y]? " -n 1 -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then 
	docker-compose build --pull
else
	docker-compose build --no-cache --pull
fi