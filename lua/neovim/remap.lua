-- leader map
vim.g.mapleader = " "

-- cmd Ex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- cmd Esc
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", ":", ";")

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

-- visual move
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- find
vim.keymap.set("n", "<leader>ff", [[:/<C-r><C-w><CR>]])
vim.keymap.set("n", "<leader>FF", [[:?<C-r><C-w><CR>]])

-- lazygit
vim.keymap.set("n", "<leader>lg", function()
    vim.cmd("sp")
    vim.cmd("res+5")
    vim.cmd("term time lazygit")
end)
