# Liam Nestelroad's Dotfile Installation Guide

This repository contains the following configurations needed for my standard development environment:

+ NeoVim
+ Tmux
+ Zsh
+ Git
+ SSH
+ GPG

## Requirements

Ensure you have the following installed on your system

### Git

Red Hat:
```bash
dnf install -y git 
```

Debian:
```bash
apt install -y git 
```

### GNU Stow

Red Hat
```bash
dnf install -y stow
```

Debian:
```bash
apt install -y stow
```

## Installation

First check out the dotfiles repo in your $HOME directory using git:

```bash
git clone https://github.com/lnestelroad/dotfiles.git
cd dotfiels
```

Then use GNU Stow to create symlinks:

```bash
stow .
```
