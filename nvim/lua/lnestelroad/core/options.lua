-- Enables line and relative line numbering.
vim.opt.nu = true
vim.opt.relativenumber = true

-- Sets tab options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Turns off line wrapping
vim.opt.wrap = false

-- Saves undo changes persitantly for Undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Uses Vim's incremental highlight when searching and removes hightlight when
-- done.
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.backround = "dark"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Adds a line on column 80 for line length reference
vim.opt.colorcolumn = "80"

-- Add a highlight for currently selected line
vim.opt.cursorline = true

-- Backspace fixes
vim.opt.backspace = "indent,eol,start"

-- Split window defaults
vim.opt.splitright = true
vim.opt.splitbelow = true

