<!-- # dotfiles

## Packages Needed

### Oh My Zsh

1. Install oh-my-zsh 
`sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`

2. Clone necessary plugins. 
```[bash]
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
3. Add plugins to ~/.zshrc as 
`plugins = ( zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting)`
Note: make sure zsh-syntax-highlighting is the last one in the above list.

4. Fix background theme issues (Not necessary depends on your theme.) Add the following line to your ~/.zshrc. 
`ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=white'`

5. Restart zsh 
`source ~/.zshrc`

### Vim
1. Install vundle
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. install youcompleteme
```[bash]
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
``` -->

# Liam Nestelroad's Dotfiles

This is a growing list of steps and commands to automate the process of:

+ Installing recently used tools/libraries
+ Importing custom configurations
+ Linking to the home directory

## Summary


## Installation

### Auto Installation

For users who are using a Ubuntu machine (or anything that uses apt), all you'll need is to run the folling command:
```zsh
sh -c "$(wget https://raw.githubusercontent.com/lnestelroad/dotfiles/master/install.sh -O -)"
```

### Manual Installation

1. Clone repo into new hidden directory.

    ```zsh
    # Use SSH (if set up)...
    git clone git@github.com:lnestelroad/dotfiles.git ~/.dotfiles

    # ...or use HTTPS and switch remotes later.
    git clone https://github.com/lnestelroad/dotfiles.git ~/.dotfiles
    ```

2. Install application, tools, and libraries.  
    + First install 
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

4. Install vscode extensions.
    ```zsh
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
    ```
    Use this command to generate extension installation list:
    ```bash
    code --list-extensions | xargs -L 1 echo code --install-extension
    ```

## TODO List

- Add options for different types of environments:
    + Lightweight docker environments
    + Data analytic specific

- Include flag options for verbosity