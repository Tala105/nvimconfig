return {
	{
		'stevearc/oil.nvim',
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {
			default_file_explorer = true,
			skip_confirm_for_simple_edits = true,
			view_options = {
				show_hidden = true,
				is_always_hidden = function(name, _)
					return name == "node_modules" or name == ".git"
				end,
			},
		},
		keys = {
			{"<Leader>o", "<cmd>Oil<CR>"},
		},
		dependencies = { { "nvim-mini/mini.icons", opts = {} },
			{ "nvim-tree/nvim-web-devicons" },
		},
		lazy = false,
	}
}
