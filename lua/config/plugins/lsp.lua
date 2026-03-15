return {
	{
		"williamboman/mason.nvim",
		config = true,
	},

	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			require("mason").setup()

			vim.lsp.config("*", {
				capabilities = vim.lsp.protocol.make_client_capabilities(),

				on_attach = function(_, bufnr)
					local opts = { buffer = bufnr }

					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
					vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

					vim.keymap.set("n", "<leader>f", function()
						vim.lsp.buf.format({ async = true })
					end, opts)

					vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<cr>", opts)
					vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, opts)
				end,
			})

			vim.lsp.enable({
				"lua_ls",
				"pyright",
				"ts_ls",
				"clangd"
			})
		end,
	},
}
