FROM jenkinsci/jnlp-slave:3.14-1
MAINTAINER Giannicola Olivadoti <go@empatica.com>

USER root

COPY docker-wrapper /usr/local/bin/docker-wrapper
ENTRYPOINT ["docker-wrapper"]

# RUN groupadd docker && gpasswd -a jenkins docker
# USER jenkins
