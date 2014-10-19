# Trusty 
FROM kurron/java:1.8.0.25

MAINTAINER Ron Kurr <kurr@kurron.org>

# install curl 
RUN apt-get --quiet --yes install curl 

# install unzip 
RUN apt-get --quiet --yes install unzip 

# install gvm 
RUN curl -s get.gvmtool.net | bash 

# install our gvm configuration and turn off interactive prompts 
COPY gvm.config /root/.gvm/etc/config

# have gvm install Groovy
RUN bash -l -c "source /root/.gvm/bin/gvm-init.sh ; gvm install groovy"
