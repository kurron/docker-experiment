# Trusty 
FROM ubuntu:14.04

MAINTAINER Ron Kurr <kurr@kurron.org>

# fetch the latest software updates
RUN apt-get --quiet update

# apply the latest software updates
RUN apt-get --quiet --yes dist-upgrade 

# install Redis 
RUN apt-get --quiet --yes install redis-server 

# expose both the default port 
EXPOSE 6379

# run Redis each time the container is started 
ENTRYPOINT /usr/bin/redis-server 

# we need this to keep the container from exiting when we detach
CMD tail -F /var/log/redis/redis-server.log 
