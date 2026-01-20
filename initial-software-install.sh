#!/bin/sh

## TERMINAL ##
sudo apt update
sudo apt -y install vim
sudo apt -y install git

# EDIT ME #
git config --global user.name "Your Name"
git config --global user.email "youremail@domain.com"

# zsh + oh-my-zsh
sudo apt -y install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install nvm
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
echo "plugins+=(zsh-nvm)" >> .zshrc

# install better npm completion
git clone https://github.com/lukechilds/zsh-better-npm-completion ~/.oh-my-zsh/custom/plugins/zsh-better-npm-completion
echo "plugins+=(zsh-better-npm-completion)" >> .zshrc

# source plugins
echo "source ~/.zsh-nvm/zsh-nvm.plugin.zsh" >> .zshrc

## DESKTOP SOFTWARE ##
## SOFTWARE ##
# syncthing keys and installation
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt update
sudo apt -y install syncthing

sudo apt -y install keepassxc

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo apt-key add -
echo 'deb https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list

sudo apt update
sudo apt install codium
