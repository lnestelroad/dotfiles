return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.cmake_format,
                null_ls.builtins.formatting.shfmt,
                null_ls.builtins.diagnostics.cmake_lint,
                null_ls.builtins.code_actions.gitsigns,
                null_ls.builtins.diagnostics.mypy.with({
                    extra_args = { "--config-file", "mypy.ini" },
                    diagnostics_config = {
                        -- see :help vim.diagnostic.config()
                        underline = true,
                        virtual_text = false,
                        signs = true,
                        update_in_insert = false,
                        severity_sort = true,
                    },
                }),
            },
        })
        local wk = require("which-key")
        wk.add({
            { "<leader>gf", vim.lsp.buf.format, desc = "Format code with null ls" },
        })
    end,
}
