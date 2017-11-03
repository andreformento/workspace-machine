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
git clone https://github.com/andreformento/linux-local-configs.git
chmod u+x -R linux-local-configs
cd linux-local-configs
./init.sh
cd ..
rm -rf linux-local-configs

# tmux
apt install -y tmux

echo "123" >> file.txt
echo '[[ $TERM != "screen" ]] && exec tmux' >> ~/.zshrc

echo "ok"
