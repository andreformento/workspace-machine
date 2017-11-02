#!/bin/sh

export DEV="$HOME/dev"
mkdir -p $DEV
mkdir -p $HOME/.ssh
git config --global user.name "andreformento"
git config --global user.email "andreformento.sc@gmail.com"
git config --global push.default simple
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i -e "s/bin\/ash/bin\/zsh/" /etc/passwd
#git clone git@github.com:andreformento/linux-local-configs.git
echo "ok"
