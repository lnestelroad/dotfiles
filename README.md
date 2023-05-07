# Liam Nestelroad's Dotfiles

Contained within this repo is all of the configs and scripts necessary to 
stand up my preferred terminal and development environment. Below will be 
detailed instructions for how to manually set up each part. 

## Pre-Setup

```bash
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y git zsh tmux exa bat fzf npm cmake snapd ripgrep nodejs build-essential docker.io docker-compose vagrant ansible python3 python3-dev python3-pip python3-setuptools apt-transport-https ca-certificates

snap install --classic kubectl
snap install --classic helm
```

## Terminal

### Relevant File
- [.zshrc](.zshrc) - Zsh Shell Configuration

### Dependencies

Oh My Zsh:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

PowerLevel10K:
```bash
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
p10k configure #follow install wizard 
```

zsh-autosuggestions:
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

zsh-syntax-highlighting:
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

zsh-history-substring-search
```bash
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
```

## Tmux

### Relevant Files
- [.tmux.conf](.tmux.conf) - Tmux Configuration File

### Dependencies

Tmux Plugin Manager (tpm)
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
After starting a new session run:
```bash
<prefix> Shift+I
```
> Note: if using these configs the prefix is `<C-a>`

## Neovim

### Relevant Files
- [.config/nvim](.config/nvim)

### Setup Requires
- [Neovim](https://neovim.io/) (Version 0.9 or Later)
- [Nerd Font](https://www.nerdfonts.com/) - I use Meslo Nerd Font
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - For Telescope Fuzzy Finder

### Plugins
#### Plugin Manager
- [wbthomason/packer](https://github.com/wbthomason/packer.nvim) - Popular plugin manager

#### Dependency For Other Plugins
- [nvim-lua/plenary](https://github.com/nvim-lua/plenary.nvim) - Useful lua functions other plugins use

#### Preferred Colorscheme: Material
- [kaicataldo/material.vim](https://github.com/kaicataldo/material.vim)

#### Navigating Between Neovim Windows and Tmux
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

#### Essentials
- [tpope/vim-surround](https://github.com/tpope/vim-surround) - manipulate surroundings with "ys", "ds", and "cs"
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) - toggle comments with "gc"

#### File Explorer
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)

#### VS Code Like Icons
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)

#### Status Line
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

#### Fuzzy Finder
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - Dependency for better performance
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder

#### Autocompletion
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion plugin
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - Completion source for text in current buffer
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path) - Completion source for file system paths

#### Snippets
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) - Useful snippets for different languages
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) - Completion source for snippet autocomplete

#### Managing & Installing Language Servers, Linters & Formatters
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)

#### LSP Configuration
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - Bridges gap b/w mason & lspconfig
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Easy way to configure lsp servers
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - Smart code autocompletion with lsp

#### Formatting & Linting
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) - Easy way to configure formatters & linters
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim) - Bridges gap b/w mason & null-ls

#### Syntax Highlighting & Autoclosing Things
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Treesitter configuration
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Autoclose brackets, parens, quotes, etc...
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) - Autoclose tags

#### Git
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Show line modifications on left hand side
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) - Integrates git commands into neovim

## GPG 

To configure GPG with the use of a Yubikey, follow [DrDuh's YukiKey-Guide](https://github.com/drduh/YubiKey-Guide)

### Relevant File
- [.gnupg](.gnupg) - Zsh Shell Configuration

## SSH

### Relevant File
- [.ssh](.ssh) - Zsh Shell Configuration

## Soft Linking

```bash
ln -sf .zshrc ~/.zshrc
ln -sf .config/nvim ~/.config/nvim
ln -sf .gitconfig ~/.gitconfig
ln -sf .tmux.conf ~/.tmux.conf
ln -sf .ssh ~/.ssh
ln -sf .gnupg ~/.gnupg
```
