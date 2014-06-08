# Trusty 
FROM ubuntu:14.04

MAINTAINER Ron Kurr <kurr@kurron.org>

# fetch the latest software updates
RUN apt-get --quiet update

# apply the latest software updates
RUN apt-get --quiet --yes dist-upgrade 

# install the wget tool
RUN apt-get --quiet --yes install wget 

# grab the TAR file from my personal account
RUN wget --quiet --output-document=/tmp/jdk-7u60-linux-x64.gz http://home.comcast.net/~kurr/vagrant/jdk-7u60-linux-x64.gz

# create the destination directory
RUN mkdir -p /usr/lib/jvm

# extract the tar file into the destination directory
RUN tar --gzip --extract --file=/tmp/jdk-7u60-linux-x64.gz --directory=/usr/lib/jvm

# make sure the permissions are correct
RUN chown -R root:root /usr/lib/jvm/jdk1.7.0_60

# make a soft-link to installation directory for convenience
RUN ln -s /usr/lib/jvm/jdk1.7.0_60 /usr/lib/jvm/java-7-oracle 

# alter the environment file so all accounts get a JAVA_HOME and JDK_HOME
RUN sed -i '$a JAVA_HOME=/usr/lib/jvm/java-7-oracle' /etc/environment
RUN sed -i '$a JDK_HOME=/usr/lib/jvm/java-7-oracle' /etc/environment
RUN cat /etc/environment

# make sure the Oracle JDK is in the path
RUN ln -s /usr/lib/jvm/java-7-oracle/bin/* /usr/local/bin
RUN which java
RUN java -version
