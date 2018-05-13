FROM ubuntu:16.04
LABEL maintainer="andreformento.sc@gmail.com"

RUN apt-get update && apt-get install -y \
    git \
    vim \
    curl \
    zip \
    zsh \
    haskell-platform \
    tmux \
    && \
    chsh -s $(which zsh)

ENV SDKMAN_DIR /usr/local/sdkman
ENV SHELL /bin/zsh
ENV SDKMAN_CUSTOM /usr/local/sdkman
ENV SCRIPTS = /scripts

# java
RUN curl -s get.sdkman.io | bash
RUN set -x \
    && echo "sdkman_auto_answer=true" > $SDKMAN_DIR/etc/config \
    && echo "sdkman_auto_selfupdate=false" >> $SDKMAN_DIR/etc/config \
    && echo "sdkman_insecure_ssl=false" >> $SDKMAN_DIR/etc/config

# node
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs

ENV HOME /home
ENV DEV $HOME/dev

ADD dev/ $DEV/
ADD scripts/ $HOME/scripts/
ADD ssh/ $HOME/.ssh/
WORKDIR $DEV
RUN $HOME/scripts/init.sh

# clear
RUN rm -rf /var/lib/apt/lists/*
