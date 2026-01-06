return {
	"nvim-mini/mini.nvim",
	version = false,
	config = function()
		require("mini.bracketed").setup({})
		require("mini.git").setup({})
		require("mini.pairs").setup({})
		require("mini.statusline").setup({})
		require("mini.surround").setup({})
	end,
}
