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
ADD .tmux.conf ~
RUN /init.sh

# clear
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /root/dev
