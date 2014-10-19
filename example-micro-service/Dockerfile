# Trusty 
FROM kurron/java:1.8.0.25

MAINTAINER Ron Kurr <kurr@kurron.org>

# install the application 
COPY service-0.0.0-SNAPSHOT.war /root/service-0.0.0-SNAPSHOT.war

# expose the application's ports 
EXPOSE 8080 

# run the application each time the container is started 
ENTRYPOINT /usr/bin/java -jar /root/service-0.0.0-SNAPSHOT.war --server.port=8080 

# we need this to keep the container from exiting when we detach
CMD tail -F /var/log/dmesg 

