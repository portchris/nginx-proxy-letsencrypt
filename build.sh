#!/usr/bin/env bash

docker network create nginx-proxy

NO_CACHE="--no-cache"
if [[ $* == *-n* ]]; then
	NO_CACHE="--pull"
fi

if [[ $NO_CACHE == "--no-cache" ]]; then
	read -p "Use Docker cache? [Y/y]? " -n 1 -r
	echo # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]; then 
		NO_CACHE="--pull"
	else 
		NO_CACHE="--no-cache"
	fi
fi

docker-compose build $NO_CACHE