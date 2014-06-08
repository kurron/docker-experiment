#!/bin/bash

docker rm rabbitmq 
docker run --detach --networking --publish-all --publish 5672:5672 --publish 15672:15672 --hostname rabbitmq --name rabbitmq --memory 512m kurron/rabbitmq:3.3.1
watch 'docker ps'
