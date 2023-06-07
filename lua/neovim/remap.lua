-- leader map
vim.g.mapleader = " "

-- cmd Ex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move config
vim.keymap.set("n", "J", "5j")
vim.keymap.set("n", "K", "5k")

-- search config
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "<leader><CR>", ":nohlsearch<CR>")

-- split config
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<up>", ":res+5<CR>")
vim.keymap.set("n", "<down>", ":res-5<CR>")
vim.keymap.set("n", "<left>", ":vertical res-5<CR>")
vim.keymap.set("n", "<right>", ":vertical res+5<CR>")

-- FZF
vim.keymap.set("n", "<leader>pf", vim.cmd.Files)
vim.keymap.set("n", "<leader>pg", vim.cmd.Ag)

-- lazygit
vim.keymap.set("n", "<leader>lg", function() vim.cmd("sp") vim.cmd("res+5") vim.cmd("term time lazygit") end)

-- Tagbar
vim.keymap.set("n", "<F8>", vim.cmd.TagbarToggle)

-- Nerdtree
vim.keymap.set("n", "tt", vim.cmd.NERDTreeToggle)

