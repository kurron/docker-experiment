# Java 8 Container 
FROM kurron/java:1.8.0.25

MAINTAINER Ron Kurr <kurr@kurron.org>

# need to do this so apt-get install works 
RUN apt-get --quiet update 

# install the unzip tool
RUN apt-get --quiet --yes install unzip 

# download Gradle archive 
RUN wget --quiet --output-document=/gradle.zip https://services.gradle.org/distributions/gradle-2.2-all.zip 
 
# create the destination directory 
RUN mkdir -p /usr/lib/jvm 

# unpack the archive 
RUN unzip /gradle.zip -d /usr/lib/jvm 

# clean up the archive 
RUN rm -f /gradle.zip 

# set the environment variables 
ENV GRADLE_HOME /usr/lib/jvm/gradle-2.2 

# export meta-data about this container
ENV KURRON_GRADLE_VERSION 2.2.0 

# verify permissions 
RUN chown -R root:root /usr/lib/jvm 

