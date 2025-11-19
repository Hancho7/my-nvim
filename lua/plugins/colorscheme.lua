--[[ return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme rose-pine")
	end,
}
]]

--[[ {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		require("kanagawa").setup({})
		vim.cmd("colorscheme kanagawa")
	end,
}
]]

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			vim.cmd("colorscheme catppuccin"),
		})
	end,
}
