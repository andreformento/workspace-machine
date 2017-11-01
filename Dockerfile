FROM ubuntu:16.04
LABEL maintainer="andreformento.sc@gmail.com"

RUN apt-get update && apt-get install -y \
    git \
    vim \
    curl \
    zsh && \
    chsh -s $(which zsh)
    
ADD init.sh /
RUN /init.sh

ENV SHELL /bin/zsh
    
WORKDIR /root/dev
