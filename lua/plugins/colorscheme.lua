return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},

	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
	},

	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				terminal_colors = true,
				contrast = "hard",
				transparent_mode = false,

				italic = {
					strings = true,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
			})
		end,
	},

	{
		"folke/tokyonight.nvim",
		priority = 1000,
	},
}
