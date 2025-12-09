return {
	"neovim/nvim-lspconfig",
	dependencies = {
		'saghen/blink.cmp',
		{
			'lukas-reineke/indent-blankline.nvim',
			-- See `:help ibl`
			main = 'ibl',
			opts = {},
		},
	},

	opts = {
		servers = {
			lua_ls = {}
		}
	},

	config = function(_, opts)
		for server, config in pairs(opts.servers) do
			config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
			vim.lsp.config[server] = config
		end
	end,
}
