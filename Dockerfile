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

RUN export WS="$HOME/ws" && \
    mkdir -p $WS && \
    mkdir -p $HOME/.ssh && \
    git config --global user.name "andreformento" && \
    git config --global user.email "andreformento.sc@gmail.com" && \
    git config --global push.default simple
    
WORKDIR /root/ws
