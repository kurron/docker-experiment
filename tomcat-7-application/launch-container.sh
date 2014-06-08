#!/bin/bash

docker rm tomcat-7
docker run --detach --hostname="tomcat-7" --name="tomcat-7" --memory="256m" kurron/tomcat:7.0.0
#docker run --tty --interactive  --hostname="tomcat-7" --name="tomcat-7" --memory="256m" kurron/tomcat:7.0.0 /bin/bash
watch 'docker ps'
