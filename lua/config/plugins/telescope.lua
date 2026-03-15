return{
	'nvim-telescope/telescope.nvim', version = '*',
	lazy = false,
	dependencies = {
		'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		telescope.load_extension('fzf')
		telescope.setup({})

		vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
		vim.keymap.set("n", "<C-p>", builtin.git_files, {})
		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") });
		end)
	end,
}
