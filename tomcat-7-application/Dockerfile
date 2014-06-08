# base this image of a previously built image
FROM kurron/java:1.8.0.05 

MAINTAINER Ron Kurr <kurr@kurron.org>

# fetch the latest software updates
RUN apt-get --quiet update

# apply the latest software updates
RUN apt-get --quiet --yes dist-upgrade 

# install wget 
RUN apt-get --quiet --yes install wget 

# grab the TAR file from the morror site 
RUN wget --quiet --output-document=/tmp/apache-tomcat-7.0.54.tar.gz http://mirror.tcpdiag.net/apache/tomcat/tomcat-7/v7.0.54/bin/apache-tomcat-7.0.54.tar.gz 
# create the destination directory
RUN mkdir -p /usr/lib/jvm

# extract the tar file into the destination directory
RUN tar --gzip --extract --file=/tmp/apache-tomcat-7.0.54.tar.gz --directory=/usr/lib/jvm

# make sure the permissions are correct
RUN chown -R root:root /usr/lib/jvm

# make a soft-link to installation directory for convenience
RUN ln -s /usr/lib/jvm/apache-tomcat-7.0.54 /usr/lib/jvm/tomcat-7 

# expose port 8080 to the outside world
EXPOSE 8080

# this will get run each time the container starts 
CMD /usr/lib/jvm/tomcat-7/bin/startup.sh && tail -F /usr/lib/jvm/tomcat-7/logs/catalina.out
