# base this image of a previously built image
FROM kurron/java:1.8.0.05 

MAINTAINER Ron Kurr <kurr@kurron.org>

# fetch the latest software updates
RUN apt-get --quiet update

# apply the latest software updates
RUN apt-get --quiet --yes dist-upgrade 

# install Tomcat 
RUN apt-get --quiet --yes install tomcat7 

# help Tomcat know which Java to use
RUN echo "JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> /etc/default/tomcat7

# expose port 8080 to the outside world
EXPOSE 8080

# this will get run each time the container starts 
CMD service tomcat7 start && tail -F /var/lib/tomcat7/logs/catalina.out
