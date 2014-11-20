# Trusty 
FROM ubuntu:14.04

MAINTAINER Ron Kurr <kurr@kurron.org>

# need to do this so apt-get install works 
RUN apt-get --quiet update 

# install the wget tool
RUN apt-get --quiet --yes install wget 

# download JDK 8 archive 
RUN wget --quiet --output-document=/jdk-8.tar.gz --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.tar.gz
 
# create the destination directory 
RUN mkdir -p /usr/lib/jvm 

# unpack the archive 
RUN tar --gunzip --extract --verbose --file /jdk-8.tar.gz --directory /usr/lib/jvm 

# clean up the archive 
RUN rm -f /jdk-8.tar.gz 

# set the environment variables 
ENV JDK_HOME /usr/lib/jvm/jdk1.8.0_25 
ENV JAVA_HOME /usr/lib/jvm/jdk1.8.0_25

# export meta-data about this container
ENV KURRON_JAVA_VENDOR Oracle 
ENV KURRON_JAVA_VERSION 1.8.0_25 

# verify permissions 
RUN chown -R root:root /usr/lib/jvm 

