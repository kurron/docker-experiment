#!/bin/bash

docker rm redis 
docker run --detach --networking --publish-all --publish 6379:6379 --hostname redis --name redis --memory 512m kurron/redis:2.8.10
watch 'docker ps'
