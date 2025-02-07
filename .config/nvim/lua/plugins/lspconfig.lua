return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_cababilities
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.cmake.setup({
				capabilities = capabilities,
			})

			-- set keybinds
			local wk = require("which-key")
			wk.add({
				{ "gR", "<cmd>Telescope lsp_references<CR>", desc = "Show LSP references" }, -- show definition, references
				{ "gD", vim.lsp.buf.declaration, desc = "Go to declaration" }, -- go to declaration
				{ "gd", "<cmd>Telescope lsp_definitions<CR>", desc = "Show LSP definitions" }, -- show lsp definitions
				{ "gi", "<cmd>Telescope lsp_implementations<CR>", desc = "Show LSP implementations" }, -- show lsp implementations
				{ "gt", "<cmd>Telescope lsp_type_definitions<CR>", desc = "Show LSP type definitions" }, -- show lsp type definitions
				{ "<leader>rn", vim.lsp.buf.rename, desc = "Smart rename" }, -- smart rename
				{ "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", desc = "Show buffer diagnostics" }, -- show  diagnostics for file
				{ "<leader>d", vim.diagnostic.open_float, desc = "Show line diagnostics" }, -- show diagnostics for line
				{ "[d", vim.diagnostic.goto_prev, desc = "Go to previous diagnostic" }, -- jump to previous diagnostic in buffer
				{ "]d", vim.diagnostic.goto_next, desc = "Go to next diagnostic" }, -- jump to next diagnostic in buffer
				{ "<leader>rs", ":LspRestart<CR>", desc = "Restart LSP" }, -- mapping to restart lsp if necessary
				{
					"K",
					vim.lsp.buf.hover,
					desc = "Show documentation for what is under cursor",
				}, -- show documentation for what is under cursor
				mode = { "n", "v" },
				{ "<leader>ca", vim.lsp.buf.code_action, desc = "See available code actions" }, -- see available code actions, in visual mode will apply to selection
			})

			-- Change the Diagnostic symbols in the sign column (gutter)
			-- (not in youtube nvim video)
			-- local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
			-- for type, icon in pairs(signs) do
			--     local hl = "DiagnosticSign" .. type
			--     vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
			-- end
		end,
	},
}
