return {
	"neovim/nvim-lspconfig",
	dependencies = {
		'saghen/blink.cmp',
		'saghen/blink.indent',
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
