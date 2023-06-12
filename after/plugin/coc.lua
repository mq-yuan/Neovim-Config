vim.g.coc_global_extensions = { 'coc-json', 'coc-vimlsp', 'coc-lua', 'coc-clangd', 'coc-pyright' }

vim.opt.updatetime = 100
vim.opt.hidden = true
vim.opt.signcolumn = "yes"

local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }

-- use <TAB>
vim.keymap.set("i", "<TAB>", "coc#pum#visible() ? coc#pum#next(1) : CheckBackspace() ? '<TAB>' : coc#refresh()", opts)

-- use <S-TAB>
vim.keymap.set("i", "<S-TAB>", "coc#pum#visible() ? coc#pum#prev(1) : '<C-h>'", opts)


-- use <CR>
vim.keymap.set("i", "<CR>", "coc#pum#visible() ? coc#pum#confirm() : '<C-g>u<CR><c-r>=coc#on_enter()<CR>'", opts)

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
vim.keymap.set("n", "<leader>-", "<Plug>(coc-diagnostic-prev)", { silent = true })
vim.keymap.set("n", "<leader>=", "<Plug>(coc-diagnostic-next)", { silent = true })

-- GoTo code navigation
vim.keymap.set("n", "gd", "<Plug>(coc-definition)", { silent = true })
vim.keymap.set("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
vim.keymap.set("n", "gi", "<Plug>(coc-implementation)", { silent = true })
vim.keymap.set("n", "gr", "<Plug>(coc-references)", { silent = true })
