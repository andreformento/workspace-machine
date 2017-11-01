FROM ubuntu:16.04
LABEL maintainer="andreformento.sc@gmail.com"

RUN mkdir /home/ws
WORKDIR /home/ws

RUN apt-get update && apt-get install -y \
        git \
        vim
