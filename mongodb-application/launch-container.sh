#!/bin/bash

docker rm mongodb 
docker run --detach --networking --publish-all --publish 27017:27017 --hostname mongodb --name mongodb --memory 512m kurron/mongodb:2.6.1
watch 'docker ps'
