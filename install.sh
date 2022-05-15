#!/bin/bash

set -e
echo "Shalom, World!"

MINIMAL=0

print_usage() {
    echo "Installation script for custom development environment."	
}

while getopts mh flag
do
    case "${flag}" in
        m) MINIMAL=1;;
        h) print_usage
           exit 0;;
    esac
done
echo "Minimal Install: $MINIMAL";

apt update && apt upgrade -y
apt install -y \
    apt-transport-https \
    ca-certificates \
    zsh \
    git \
    vim \
    tmux \
    htop \
    tree \
    ssh \
    sl \
    snapd \
    curl \
    wget \
    docker.io \
    docker-compose \
    vagrant \
    ansible \
    python3 \
    python3-dev \
    python3-pip \
    python3-setuptools \
    nodejs \
    npm \
    build-essential \
    cmake \
    
snap install --classic kubectl
snap install --classic helm

# oh-my-zsh setup 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
rm ~/.zshrc

# Vim bundler setup

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Soft link config files in home directory
ln -sf $(pwd)/.zshrc ~/.zshrc
ln -sf $(pwd)/.zsh_history ~/.zsh_history
ln -sf $(pwd)/.vimrc ~/.vimrc
ln -sf $(pwd)/.gitconfig ~/.gitconfig
ln -sf $(pwd)/.tmux.conf ~/.tmux.conf

chsh -s $(which zsh)
