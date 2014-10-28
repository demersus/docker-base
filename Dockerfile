FROM ubuntu:latest
MAINTAINER Nik Petersen (demersus@gmail.com)
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y ca-certificates curl inotify-tools pwgen supervisor unzip wget
RUN apt-get clean
ADD init /init
RUN chmod +x /init/supervisor
CMD /init/supervisor
