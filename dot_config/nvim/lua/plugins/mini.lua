return {
	'nvim-mini/mini.nvim',
	version = false,
	config =  function ()
		require("mini.animate").setup({})
		require("mini.bracketed").setup({})
		require("mini.git").setup({})
		require("mini.notify").setup({})
		require("mini.pairs").setup({})
		require("mini.statusline").setup({})
		require("mini.surround").setup({})
	end
}
