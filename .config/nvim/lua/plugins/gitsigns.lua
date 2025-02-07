return {
    "lewis6991/gitsigns.nvim",
    lazy=false,
    config = function()
        require("gitsigns").setup({
            on_attach = function()
                local gitsigns = require("gitsigns")

                local wk = require("which-key")
                wk.add( {
                    { "<leader>h", group = "Git", nowait = true, remap = false },
                    { "<leader>hj", gitsigns.next_hunk, desc = "Next Hunk", nowait = true, remap = false },
                    { "<leader>hk", gitsigns.prev_hunk, desc = "Prev Hunk", nowait = true, remap = false },
                    { "<leader>hs", gitsigns.stage_hunk, desc = "Stage Hunk", nowait = true, remap = false },
                    { "<leader>hu", gitsigns.undo_stage_hunk, desc = "Undo Stage Hunk", nowait = true, remap = false },
                    { "<leader>hr", gitsigns.reset_hunk, desc = "Reset Hunk", nowait = true, remap = false },
                    { "<leader>hs", function ()
                       gitsigns.stage_hunk({vim.fn.line("."), vim.fn.line("v") })
                    end, desc = "Stage Hunk", nowait = true, remap = false, mode="v" },
                    { "<leader>hr", function ()
                       gitsigns.reset_hunk({vim.fn.line("."), vim.fn.line("v") })
                    end, desc = "Reset Hunk", nowait = true, remap = false, mode="v"},

                    { "<leader>hS", gitsigns.stage_buffer, desc = "Stage Buffer", nowait = true, remap = false },
                    { "<leader>hR", gitsigns.reset_buffer, desc = "Reset Buffer", nowait = true, remap = false },
                    { "<leader>hp", gitsigns.preview_hunk, desc = "Preview Hunk", nowait = true, remap = false },
                    { "<leader>hi", gitsigns.preview_hunk_inline, desc = "Preview Hunk inline", nowait = true, remap = false },
                    { "<leader>hl", gitsigns.blame_line, desc = "Blame line", nowait = true, remap = false },
                    { "<leader>hd", gitsigns.diffthis, desc = "Diff", nowait = true, remap = false },


                    { "<leader>hb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch", nowait = true, remap = false },
                    { "<leader>hc", "<cmd>Telescope git_commits<cr>", desc = "Checkout commit", nowait = true, remap = false },
                    { "<leader>ho", "<cmd>Telescope git_status<cr>", desc = "Open changed file", nowait = true, remap = false },

                    { "<leader>ht" , group="Toggles" },
                    { "<leader>htb" , gitsigns.toggle_current_line_blame, desc="Toggle current line git blame", nowait=true, remap=false },
                    { "<leader>htd", gitsigns.toggle_deleted , desc="Toggle deleted" , nowait=true, remap=false },
                    { "<leader>htw", gitsigns.toggle_word_diff , desc="Toggle word diff" , nowait=true, remap=false },
                })
        end
        })
    end
}
