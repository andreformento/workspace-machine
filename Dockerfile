FROM ubuntu:16.04
LABEL maintainer="andreformento.sc@gmail.com"

RUN apt-get update && apt-get install -y \
    git \
    vim \
    curl \
    zsh && \
    chsh -s $(which zsh)

ENV SHELL /bin/zsh

ADD init.sh /
RUN /init.sh

RUN tmux && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root/dev
