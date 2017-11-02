FROM ubuntu:16.04
LABEL maintainer="andreformento.sc@gmail.com"

RUN apt-get update && apt-get install -y \
    git \
    vim \
    curl \
    zsh && \
    chsh -s $(which zsh)

RUN export DEV="$HOME/dev" && \
    mkdir -p $DEV && \
    mkdir -p $HOME/.ssh && \
    git config --global user.name "andreformento" && \
    git config --global user.email "andreformento.sc@gmail.com" && \
    git config --global push.default simple && \
    ssh-keyscan -H github.com >> ~/.ssh/known_hosts && \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    
ENV SHELL /bin/zsh
    
WORKDIR /root/dev
