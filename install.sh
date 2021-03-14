#!/bin/bash

sudo apt update && sudo apt upgrade
sudo apt install -y \
    # Terminal tools
    zsh \
    git \
    vim \
    tmux \ 
    htop \
    tree \
    ssh \
    sl \
    ssh \
    # Devops tools
    docker.io \
    docker-compose \
    vagrant \
    ansible \
    # Python stuff
    python3 \
    python3-dev \
    python3-pip \
    python3-setuptools \
    # Node stuff
    nodejs
    npm
    # Basic C/C++ compile tools
    build-essential \ #specific for ubuntu
    cmake \
    # Application installation tools
    snapd
   
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


rm ~/.zshrc

ln -sf .zshrc ~/.zshrc
ln -sf .zsh_history ~/.zsh_history
ln -sf .vimrc ~/.vimrc
ln -sf .gitconfig ~/.gitconfig
ln -sf .tmux.conf ~/.tmux.conf





