return{
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		opts = {
			ensure_installed = { 'bash', 'c', 'python', 'diff', 'lua', 'markdown',  'vim',  'query'},
			auto_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		},
	}
}

