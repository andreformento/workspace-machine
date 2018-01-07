FROM ubuntu:16.04
LABEL maintainer="andreformento.sc@gmail.com"

RUN apt-get update && apt-get install -y \
    git \
    vim \
    curl \
    zip \
    zsh && \
    chsh -s $(which zsh)

ENV SDKMAN_DIR /usr/local/sdkman
ENV SHELL /bin/zsh
ENV SDKMAN_CUSTOM /usr/local/sdkman

RUN curl -s get.sdkman.io | bash
RUN set -x \
    && echo "sdkman_auto_answer=true" > $SDKMAN_DIR/etc/config \
    && echo "sdkman_auto_selfupdate=false" >> $SDKMAN_DIR/etc/config \
    && echo "sdkman_insecure_ssl=false" >> $SDKMAN_DIR/etc/config

ADD init.sh /
ADD .tmux.conf ~
RUN /init.sh

# clear
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /root/dev
