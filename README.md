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

4. Create symlinks in the Home directory to the real files in the repo.

```zsh
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.zsh_history ~/.zsh_history
ln -sf ~/.dotfile/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfile/.tmux.conf ~/.tmux.conf
```



## TODO List

- Add options for different types of environments:
    + Lightweight docker environments
    + Data analytic specific

- Include flag options for verbosity