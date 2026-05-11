return {
	{
		"mrcjkb/rustaceanvim",
		version = "^5",
		lazy = false,
		ft = { "rust" },
		config = function()
			vim.g.rustaceanvim = {
				server = {
					on_attach = function(client, bufnr)
						-- Set keybindings for Rust-specific features
						vim.keymap.set("n", "<leader>rr", function()
							vim.cmd.RustLsp("runnables")
						end, { buffer = bufnr, desc = "[R]ust [R]unnables" })

						vim.keymap.set("n", "<leader>rd", function()
							vim.cmd.RustLsp("debuggables")
						end, { buffer = bufnr, desc = "[R]ust [D]ebuggables" })
					end,
				},
			}
		end,
	},
}
