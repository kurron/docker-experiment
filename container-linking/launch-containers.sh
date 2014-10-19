#!/bin/bash

# launch MongoDB but don't map any ports
docker run --detach --hostname="mongodb" --name="mongodb" --memory="512m" mongo:latest 

# launch RabbitMQ but don't map any ports
docker run --detach --hostname="rabbitmq" --name="rabbitmq" --memory="256m" kurron/rabbitmq:3.3.5 

# launch the application, map its port to localhost:8080 and have Docker take care of mapping the MongoDB and RabbitMQ ports to this container
# Noticed that we use an alias for mongodb. That is because by default the application is expecting a hostname of mongo for the database
docker run --detach --hostname="micro-service" --name="micro-service" --memory="256m" --publish 8080:8080 --link mongodb:mongo --link rabbitmq:rabbitmq kurron/example-micro-service:0.0.0