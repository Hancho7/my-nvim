return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<c-\>]],
			hide_numbers = true,
			shade_terminals = true,
			start_in_insert = true,
			insert_mappings = true,
			terminal_mappings = true,
			persist_size = true,
			direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				border = "curved", -- 'single' | 'double' | 'shadow' | 'curved'
				winblend = 0,
			},
		})

		-- Custom keymaps
		local keymap = vim.keymap.set
		local opts = { noremap = true, silent = true }

		-- Toggle terminal
		keymap("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", opts)
		keymap("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", opts)
		keymap("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical size=80<cr>", opts)

		-- Quick Rust commands
		-- keymap("n", "<leader>tr", "<cmd>TermExec cmd='cargo run'<cr>", opts)
		-- keymap("n", "<leader>tt", "<cmd>TermExec cmd='cargo test'<cr>", opts)
		-- keymap("n", "<leader>tb", "<cmd>TermExec cmd='cargo build'<cr>", opts)
	end,
}
