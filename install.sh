#!/bin/bash

set -e
echo "Shalom, World!"

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
    exa \
    bat \
    fzf \
    entr\
    zoxide

    
snap install --classic kubectl
snap install --classic helm

# python setup
sudo -u $SUDO_USER pip3 install --upgrade pip
sudo -u $SUDO_USER pip3 install thefuck
sudo -u $SUDO_USER pip3 install commitizen

# oh-my-zsh setup 
if [ ! -d "/home/$SUDO_USER/.oh-my-zsh" ]
then 
    sudo -u $SUDO_USER sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    sudo -u $SUDO_USER git clone https://github.com/zsh-users/zsh-autosuggestions /home/$SUDO_USER/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    sudo -u $SUDO_USER git clone https://github.com/zsh-users/zsh-history-substring-search /home/$SUDO_USER/.oh-my-zsh/custom/plugins/zsh-history-substring-search
    sudo -u $SUDO_USER git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/$SUDO_USER/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    sudo -u $SUDO_USER rm /home/$SUDO_USER/.zshrc
fi
# Vim setup
if [ ! -d "/home/$SUDO_USER/.vim" ]
then
    sudo -u $SUDO_USER git clone https://github.com/VundleVim/Vundle.vim.git /home/$SUDO_USER/.vim/bundle/Vundle.vim
    sudo -u $SUDO_USER vim +visual +PluginInstall +qall
fi

# Tmux setup
if [ ! -d "/home/$SUDO_USER/.tmux" ]
then
    sudo -u $SUDO_USER git clone https://github.com/tmux-plugins/tpm /home/$SUDO_USER/.tmux/plugins/tpm
    # start a server but don't attach to it
    sudo -u $SUDO_USER tmux start-server
    # create a new session but don't attach to it either
    sudo -u $SUDO_USER tmux new-session -d
    # install the plugins
    sudo -u $SUDO_USER /home/$SUDO_USER/.tmux/plugins/tpm/scripts/install_plugins.sh
    # killing the server is not required, I guess
    sudo -u $SUDO_USER tmux kill-server
fi

# Soft link config files in home directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
sudo -u $SUDO_USER ln -sf $DIR/.zshrc /home/$SUDO_USER/.zshrc
sudo -u $SUDO_USER ln -sf $DIR/.vimrc /home/$SUDO_USER/.vimrc
sudo -u $SUDO_USER ln -sf $DIR/.gitconfig /home/$SUDO_USER/.gitconfig
sudo -u $SUDO_USER ln -sf $DIR/.tmux.conf /home/$SUDO_USER/.tmux.conf

mkdir -p $SUDO_USER/.ssh
cp $DIR/config /home/$SUDO_USER/.ssh/config

chsh -s $(which zsh)
