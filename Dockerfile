MAINTAINER Nik Petersen (demersus@gmail.com)
FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y ca-certificates curl inotify-tools pwgen supervisor unrar unzip wget
RUN apt-get clean
