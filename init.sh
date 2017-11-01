#!/bin/sh

mkdir ~/init
cd ~/init

git clone git@github.com:andreformento/linux-local-configs.git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

export WS="$HOME/ws" && \
mkdir -p $WS && \
mkdir -p $HOME/.ssh && \
git config --global user.name "andreformento" && \
git config --global user.email "andreformento.sc@gmail.com" && \
git config --global push.default simple

cd ~
rm -rf ~/init
