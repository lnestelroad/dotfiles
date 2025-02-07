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

```bash
sudo apt install -y git 
```

### GNU Stow

```bash
sudo apt install -y stow
```

### Tmux and TPM

```bash
sudo apt install tmx
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Neovim

```bash
sudo apt install neovim
```

### ZSH

```bash
sudo apt install zsh
sudo chsh ... # i forgor cmd
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
