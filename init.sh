#!/bin/sh

mkdir ~/init
cd ~/init

################################### 
export WS="$HOME/ws" && \
mkdir -p $WS && \
mkdir -p $HOME/.ssh && \
git config --global user.name "andreformento" && \
git config --global user.email "andreformento.sc@gmail.com" && \
git config --global push.default simple


ssh-keyscan -H github.com >> ~/.ssh/known_hosts
git clone git@github.com:andreformento/linux-local-configs.git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i -e "s/bin\/ash/bin\/zsh/" /etc/passwd

################################### 

cd ~
rm -rf ~/init
