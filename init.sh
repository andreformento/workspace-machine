#!/bin/sh

export DEV="$HOME/dev"
mkdir -p $DEV
mkdir -p $HOME/.ssh
git config --global user.name "andreformento"
git config --global user.email "andreformento.sc@gmail.com"
git config --global push.default simple
ssh-keyscan -H github.com >> ~/.ssh/known_hosts

# Configure oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i -e "s/bin\/ash/bin\/zsh/" /etc/passwd

# Customize my terminal

curl -fsSL https://raw.github.com/andreformento/linux-local-configs/master/agnoster.zsh-theme
chmod u+x agnoster.zsh-theme
sh -c "$(curl -fsSL https://raw.githubusercontent.com/andreformento/linux-local-configs/master/init.sh)"

echo "ok"
