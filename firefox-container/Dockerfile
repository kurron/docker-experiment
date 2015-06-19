FROM ubuntu:14.04 

MAINTAINER Ron Kurr <kurr@kurron.org>

RUN apt-get update && apt-get --quiet --yes install firefox && apt-get clean
RUN groupadd --gid 1000 vagrant
RUN useradd --home-dir /home/vagrant --shell /bin/bash --create-home --uid 1000 --gid 1000 vagrant

USER vagrant

ENV HOME /home/vagrant

ENTRYPOINT [ "/usr/bin/firefox" ]
CMD [ "" ]
