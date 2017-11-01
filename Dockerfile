FROM ubuntu:16.04
LABEL maintainer="andreformento.sc@gmail.com"

RUN apt-get update && apt-get install -y \
    git \
    vim

RUN mkdir /home/ws && \
    git config --global user.name "andreformento" && \
    git config --global user.email "andreformento.sc@gmail.com"
    
WORKDIR /home/ws
