FROM ubuntu:16.04
LABEL maintainer="andreformento.sc@gmail.com"

RUN apt-get update && apt-get install -y \
    git \
    vim \
    curl \
    zsh && \
    chsh -s $(which zsh)
    
RUN apt-get remove --purge -y $BUILD_PACKAGES $(apt-mark showauto) && \
    rm -rf /var/lib/apt/lists/*

ADD init.sh /
RUN /init.sh

#RUN export DEV="$HOME/dev" && \
#    mkdir -p $DEV && \
#    mkdir -p $HOME/.ssh && \
#    git config --global user.name "andreformento" && \
#    git config --global user.email "andreformento.sc@gmail.com" && \
#    git config --global push.default simple && \
#    rm -rf ~/.ssh/known_hosts && \
#    ssh-keyscan -H github.com >> ~/.ssh/known_hosts && \
#    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
#    #sed -i -e "s/bin\/ash/bin\/zsh/" /etc/passwd && \
#    #git clone git@github.com:andreformento/linux-local-configs.git && \
#    echo "ok"
    
ENV SHELL /bin/zsh
    
WORKDIR /root/dev
