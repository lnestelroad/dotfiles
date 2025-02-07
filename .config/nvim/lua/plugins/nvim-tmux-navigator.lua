return{
    "christoomey/vim-tmux-navigator",
    config = function()
        local wk = require("which-key")
        wk.add({
            {"<c-h>", ":TmuxNavigateLeft<CR>", desc = "which_key_ignore"},
            {"<c-j>", ":TmuxNavigateDown<CR>", desc = "which_key_ignore"},
            {"<c-k>", ":TmuxNavigateUp<CR>", desc = "which_key_ignore"},
            {"<c-l>", ":TmuxNavigateRight<CR>", desc = "which_key_ignore"},
        })
    end
}
