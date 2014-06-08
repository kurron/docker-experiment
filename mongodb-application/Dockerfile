# Trusty 
FROM ubuntu:14.04

MAINTAINER Ron Kurr <kurr@kurron.org>

# fetch the latest software updates
RUN apt-get --quiet update

# apply the latest software updates
RUN apt-get --quiet --yes dist-upgrade 

# import the MongoDB public key
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10

# add the MongoDB repository
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

# fetch the latest software updates
RUN apt-get --quiet update

# install MongoDB 
RUN apt-get --quiet --yes install mongodb-org

# create the MongoDB data directory
RUN mkdir -p /data/db 

# expose port 27017 from the container to the host
EXPOSE 27017

# run MongoDB each time the container is started 
ENTRYPOINT /usr/bin/mongod --noprealloc --smallfiles --directoryperdb --notablescan --profile 1 --slowms 250

# we need this to keep the container from exiting when we detach
CMD tail -F /var/log/mongodb/mongod.log 
