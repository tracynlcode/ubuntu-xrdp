# https://github.com/danchitnis/container-xrdp
# https://github.com/danielguerra69/ubuntu-xrdp-docker
FROM danielguerra/ubuntu-xrdp:20.04
MAINTAINER Daniel Guerra

# Add packages

RUN apt-get update
RUN apt-get -yy install docker.io docker-compose git 
RUN apt-get -y install wget

# Configure
RUN echo "export DOCKER_HOST='tcp://docker:2375'" >> /etc/profile
RUN wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
RUN tar -xvf ngrok-v3-stable-linux-amd64.tgz

# Clean

RUN apt-get -yy clean
RUN rm -rf /tmp/*

#COPY ./Run.sh /usr/bin/
#RUN mv /usr/bin/Run.sh /usr/bin/run.sh
#RUN chmod +x /usr/bin/run.sh

# Docker config
# ENTRYPOINT ["/usr/bin/run.sh"]
