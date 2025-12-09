return {
	'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'xvzc/chezmoi.nvim',
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release --target install'
		}
	},
	keys = {
		{
			"<leader>ff",
			"<cmd>Telescope find_files<CR>",
			desc = "Find Files"
		},
		{
			"<leader>fh",
			"<cmd>Telescope help_tags<CR>",
			desc = "Search help tags"
		},
		{
			"<leader>fg",
			"<cmd>Telescope live_grep<CR>",
			desc = "Live grep"
		},
		{
			"<leader>fc",
			function()
				require("telescope.builtin").find_files({
					cwd=vim.fn.stdpath("config"),
					results_title="Found config files",
				})
			end,
			desc = "Find file in nvim config"
		},
		{
			"<C-p>",
			"<cmd>Telescope git_files<CR>",
			desc = "Search git files",
		},
		{
			"<leader>cz",
			function ()
				require("chezmoi.pick").telescope()
			end,
			desc = "Search all Chezmoi managed files",
		},
		{
			"<leader>fc",
			function ()
				require("chezmoi.pick").telescope(
					vim.fn.stdpath('config'),
					{
						"--path-style",
						"absolute",
						"--include",
						"files",
						"--exclude",
						"externals",
					}
				)
			end,
		},
	},
}
