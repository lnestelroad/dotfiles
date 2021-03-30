#!/bin/bash
echo "Shalom, World!"

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
    snapd
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

# Applications
sudo snap install code --classic
sudo snap install spotify


code --install-extension aaron-bond.better-comments
code --install-extension CoenraadS.bracket-pair-colorizer-2
code --install-extension dave-hagedorn.jenkins-runner
code --install-extension disroop.conan
code --install-extension eamodio.gitlens
code --install-extension Equinusocio.vsc-community-material-theme
code --install-extension Equinusocio.vsc-material-theme
code --install-extension equinusocio.vsc-material-theme-icons
code --install-extension GrapeCity.gc-excelviewer
code --install-extension Gruntfuggly.todo-tree
code --install-extension hediet.vscode-drawio
code --install-extension James-Yu.latex-workshop
code --install-extension janjoerke.jenkins-pipeline-linter-connector
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.cpptools
code --install-extension PKief.material-icon-theme
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension tomoki1207.pdf
code --install-extension twxs.cmake
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension vscode-icons-team.vscode-icons
code --install-extension vscodevim.vim


