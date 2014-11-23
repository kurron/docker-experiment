# Gradle Container 
FROM kurron/gradle:2.2.0 

MAINTAINER Ron Kurr <kurr@kurron.org>

# copy the Gradle file that will control the build sequence
#COPY *.gradle /usr/lib/jvm/gradle-2.2/init.d/

COPY 01-groovy.gradle  /usr/lib/jvm/gradle-2.2/init.d/
COPY 02-repositories.gradle  /usr/lib/jvm/gradle-2.2/init.d/
#COPY 03-codenarc.gradle /usr/lib/jvm/gradle-2.2/init.d/ 
#COPY 04-jacoco.gradle /usr/lib/jvm/gradle-2.2/init.d/ 
#COPY 05-general.gradle /usr/lib/jvm/gradle-2.2/init.d/
