# Liam Nestelroad's Dotfiles

Contained within this repo is all of the configs and scripts necessary to 
stand up my prefered terminal developement environement. Below will be detailed
instructions for how to manually set up each part. 

## Installation

### Auto Installation

For users who are using a Debian based OS, all you'll need is to do is run the 
folling command:

```zsh
sh -c "$(wget https://raw.githubusercontent.com/lnestelroad/dotfiles/master/install.sh -O -)"
```

### Manual Installation

1. Clone repo into new hidden directory.

    ```zsh
    git clone git@github.com:lnestelroad/dotfiles.git ~/.dotfiles
    ```

2. Install application, tools, and libraries.

    - First install

    ```zsh
    # Change apt to whatever package manager your linux flavor uses (ex: pacman for arch)
    sudo apt install -y \
        # Terminal tools
        zsh \
        git \
        vim \
        tmux \
        htop \
        tree \
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
        # Basic C/C++ compile tools
        build-essential \ #specific for ubuntu
        cmake \
        # Application installation tools
        snapd
    ```

3. Create symlinks in the Home directory to the real files in the repo.

    ```bash
    # There are better and less manual ways to do this;
    # investigate install scripts and bootstrapping tools.

    ln -sf ~/.dotfiles/.zshrc ~/.zshrc
    ln -sf ~/.dotfiles/.zsh_history ~/.zsh_history
    ln -sf ~/.dotfile/.vimrc ~/.vimrc
    ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
    ln -sf ~/.dotfile/.tmux.conf ~/.tmux.conf
    ```

<!-- 4. Install vscode extensions. -->
<!--     ```zsh -->
<!--     code --install-extension aaron-bond.better-comments -->
<!--     code --install-extension CoenraadS.bracket-pair-colorizer-2 -->
<!--     code --install-extension dave-hagedorn.jenkins-runner -->
<!--     code --install-extension disroop.conan -->
<!--     code --install-extension eamodio.gitlens -->
<!--     code --install-extension Equinusocio.vsc-community-material-theme -->
<!--     code --install-extension Equinusocio.vsc-material-theme -->
<!--     code --install-extension equinusocio.vsc-material-theme-icons -->
<!--     code --install-extension GrapeCity.gc-excelviewer -->
<!--     code --install-extension Gruntfuggly.todo-tree -->
<!--     code --install-extension hediet.vscode-drawio -->
<!--     code --install-extension James-Yu.latex-workshop -->
<!--     code --install-extension janjoerke.jenkins-pipeline-linter-connector -->
<!--     code --install-extension ms-azuretools.vscode-docker -->
<!--     code --install-extension ms-python.python -->
<!--     code --install-extension ms-python.vscode-pylance -->
<!--     code --install-extension ms-toolsai.jupyter -->
<!--     code --install-extension ms-vscode-remote.remote-containers -->
<!--     code --install-extension ms-vscode.cpptools -->
<!--     code --install-extension PKief.material-icon-theme -->
<!--     code --install-extension streetsidesoftware.code-spell-checker -->
<!--     code --install-extension tomoki1207.pdf -->
<!--     code --install-extension twxs.cmake -->
<!--     code --install-extension VisualStudioExptTeam.vscodeintellicode -->
<!--     code --install-extension vscode-icons-team.vscode-icons -->
<!--     code --install-extension vscodevim.vim -->
<!--     ``` -->
<!--     Use this command to generate extension installation list: -->
<!--     ```bash -->
<!--     code --list-extensions | xargs -L 1 echo code --install-extension -->
<!--     ``` -->

## TODO List

-   Add options for different types of environments:

    -   Lightweight docker environments
    -   Data analytic specific

-   Include flag options for verbosity
