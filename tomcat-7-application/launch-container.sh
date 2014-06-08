#!/bin/bash

docker rm tomcat-7
docker run --detach --networking --publish 127.0.0.1:8080:8080 --hostname="tomcat-7" --name="tomcat-7" --memory="256m" kurron/tomcat:7.0.54
#docker run --tty --interactive  --hostname="tomcat-7" --name="tomcat-7" --memory="256m" kurron/tomcat:7.0.54 /bin/bash
watch 'docker ps'
