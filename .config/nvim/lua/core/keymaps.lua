vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local wk = require("which-key")

wk.add({
    {"jk", "<ESC>", desc = "Exit insert mode with 'jk'", mode = "i"},
    {"<leader>nh", ":nohl<CR>", desc = "Clear search highlights" },

    -- window management
    {"<leader>s", group = "Split Window"},
    {"<leader>sv", "<C-w>v", desc = "Split window vertically" }, -- split window vertically
    {"<leader>sh", "<C-w>s", desc = "Split window horizontally" }, -- split window horizontally
    {"<leader>se", "<C-w>=", desc = "Make splits equal size" }, -- make split windows equal width & height
    {"<leader>sx", "<cmd>close<CR>", desc = "Close current split" }, -- close current split window

    {"<leader>t", group = "Tabs"},
    {"<leader>to", "<cmd>tabnew<CR>", desc = "Open new tab" }, -- open new tab
    {"<leader>tx", "<cmd>tabclose<CR>", desc = "Close current tab" }, -- close current tab
    {"<leader>tn", "<cmd>tabn<CR>", desc = "Go to next tab" }, --  go to next tab
    {"<leader>tp", "<cmd>tabp<CR>", desc = "Go to previous tab" }, --  go to previous tab
    {"<leader>tf", "<cmd>tabnew %<CR>", desc = "Open current buffer in new tab" }, --  move current buffer to new tab
    --
    -- window navigation
    {"c-k", ":wincmd k<CR>", desc = "which_key_ignore"},
    {"c-j", ":wincmd j<CR>", desc = "which_key_ignore"},
    {"c-h", ":wincmd h<CR>", desc = "which_key_ignore"},
    {"c-l", ":wincmd l<CR>", desc = "which_key_ignore"},

    -- line moving
    {"J", ":m '>+1<CR>gv=gv", mode="v", desc = "Moves selected line down one" }, -- move line down one
    {"K", ":m '<-2<CR>gv=gv", mode="v", desc = "Moves selected line up one" }, -- move line down one

    -- Cursor centering
    {"<C-d>", "<C-d>zz", desc = "Scroll down a half screen and center cursor" },
    {"<C-u>", "<C-u>zz", desc = "Scroll up a half screen and center cursor" },
    {"n", "nzzzv", desc = "Move and center cursor to next search result" },
    {"N", "Nzzzv", desc = "Move and center cursor to previous search result" },

    -- register remaps
    {"p", [["_dP]], mode="x", desc = "which_key_ignore" }, -- remaps the paste command to not yank selected text when pasteing
    {"x", [["_x]], desc = "which_key_ignore" }, -- remaps the x action to not save cuts into registers


    -- {"<leader>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Find and replace word under cursor" },
    -- {"<leader>x", "<cmd>!chmod +x %<CR>", desc = "Makes current file executable" },
})

-- increment/decrement numbers
-- keymap.set("v", "+", "<C-w>><", { desc = "Increment number" }) -- increment
-- keymap.set("v", "-", "<C-w><", { desc = "Decrement number" }) -- decrement

