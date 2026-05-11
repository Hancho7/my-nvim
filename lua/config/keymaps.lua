vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to window below" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to window above" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

vim.keymap.set("n", "<Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<Down>", ":resize -2<CR>", { desc = "Decrease window height" })

vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", { desc = "Clear search highlights" })

vim.keymap.set("i", "<leader>kj", "<Esc>", { desc = "Exit normal mode" })

vim.keymap.set("n", "<leader>1", function()
	vim.cmd("colorscheme catppuccin")
end, { desc = "Catppuccin Theme" })

vim.keymap.set("n", "<leader>2", function()
	vim.cmd("colorscheme kanagawa")
end, { desc = "Kanagawa Theme" })

vim.keymap.set("n", "<leader>3", function()
	vim.cmd("colorscheme rose-pine")
end, { desc = "Rose Pine Theme" })
