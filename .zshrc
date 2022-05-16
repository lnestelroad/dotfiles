# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:/usr/bin/python:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export https_proxy=http://proxy1.global.lmco.com:80
export HTTPS_PROXY=http://proxy1.global.lmco.com:80
export http_proxy=http://proxy1.global.lmco.com:80
export HTTP_PROXY=http://proxy1.global.lmco.com:80
export no_proxy="127.0.0.1, localhost, *.local,  10.96.0.0/12,192.168.99.0/24,192.168.39.0/24, 192.168.49.2"
export NO_PROXY="localhost, 127.0.0.1, *.local, 10.96.0.0/12,192.168.99.0/24,192.168.39.0/24, 192.168.49.2"
export ANSIBLE_STDOUT_CALLBACK=yaml

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="sonicradish"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting kubectl)

source $ZSH/oh-my-zsh.sh
source ~/env/bin/activate
source /opt/rh/devtoolset-8/enable

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=white'

#############################################################
#ALIAS
# 
alias ls="exa -ahl"
alias tree="exa --tree"
alias cat="batcat"
alias doclean="(docker rm $(docker ps --filter status=exited -q) || true) && (docker rmi $(docker images -f "dangling=true" -q) || true)"

function mvd() {
  echo $1
  FILES=()
  while IFS= read -r line; do
    FILES+=( "$line" )
  done < <( /bin/ls -tr ~/Downloads| tail -$(($1)) )

  printf '%s\n' "${FILES[@]}"

  echo "Are these the right files?"
  echo "(y)es or (n)o"

  read choice
  if [[ "$choice" == "y" ]]; then
    echo "Moving . . ."

    for i in "${FILES[@]}";
    do
      mv ~/Downloads/$i $PWD
    done
  else
    echo "You're a stupid bitch"
  fi

  echo "Done"

  sleep 1
  clear
}

function mkcd {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name"
  elif [ -d $1 ]; then
    echo "\`$1' already exists"
  else
    mkdir $1 && cd $1
  fi
}
amake() {
          cmake -DCMAKE_BUILD_TYPE=Release -DFOUND_SWDEV_THIRD_PARTY_SOURCE="/home/local/swdev/3rd_party" -DVTK_DEV_RESOURCES_PATH=/home/local/swdev/vtk_resources -DCMAKE_INSTALL_PREFIX=../wsf_install ${1}
        }

dmake() {
          cmake -DCMAKE_BUILD_TYPE=Debug -DFOUND_SWDEV_THIRD_PARTY_SOURCE="/local/swdev/3rd_party" -DVTK_DEV_RESOURCES_PATH=/local/swdev/vtk_resources -DCMAKE_INSTALL_PREFIX=../wsf_install ${1}
        }

afsim_build() {
          cmake --build . --target ${1} -- -j18
        }

eval $(thefuck --alias)
eval "$(zoxide init zsh)"
