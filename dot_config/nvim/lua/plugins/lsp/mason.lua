return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls@3.15.0",
				"emmet_language_server",
				"html",
				"cssls",
				"css_variables",
				"biome",
			},
			automatic_enable = true,
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"prettier",
				"prettierd",
				"luacheck",
				"htmlhint",
			},
		},
		dependencies = {
			"mason-org/mason-lspconfig.nvim",
		},
	},
}
