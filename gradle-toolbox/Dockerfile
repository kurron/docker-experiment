# Java 8 Container 
FROM kurron/java:1.8.0.25

MAINTAINER Ron Kurr <kurr@kurron.org>

# install Gradle 
RUN apt-get --quiet --yes install unzip && apt-get clean && wget --quiet --output-document=/gradle.zip https://services.gradle.org/distributions/gradle-2.2-all.zip && mkdir -p /usr/lib/jvm && unzip /gradle.zip -d /usr/lib/jvm && rm -f /gradle.zip && chown -R root:root /usr/lib/jvm 

# set the environment variables 
ENV GRADLE_HOME /usr/lib/jvm/gradle-2.2 
ENV PATH $PATH:$GRADLE_HOME/bin

# export meta-data about this container
ENV KURRON_GRADLE_VERSION 2.2.0 

# create a mount point where the source files will be
VOLUME ["/src"]
