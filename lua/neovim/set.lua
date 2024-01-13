vim.opt.encoding = "utf-8"
vim.opt.fileencoding = 'utf-8'

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.scrolloff = 5

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.g.mapleader = " "

vim.g.loaded_perl_provider = 0

vim.opt.clipboard = 'unnamedplus'


-- vim.g.clipboard = {
--     name = 'WslClipboard',
--     copy = {
--         ['+'] = 'clip.exe',
--         ['*'] = 'clip.exe',
--     },
--     paste = {
--         ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--         ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--     },
--     cache_enabled = 0,
-- }

-- do
--     local clip, opts = '/mnt/c/Windows/System32/clip.exe', {}
--     function opts.callback()
--         if vim.v.event.operator ~= 'y' then return end
--         vim.fn.system(clip, vim.fn.getreg(0))
--     end

--     if vim.fn.executable(clip) then
--         opts.group = vim.api.nvim_create_augroup("WSLYank", { clear = true })
--         vim.api.nvim_create_autocmd("TextYankPost", opts)
--     end
-- end

function ReplaceCrLfOnPaste()
    local cursor_save = vim.fn.getpos('.')

    vim.fn.setreg('+', vim.fn.substitute(vim.fn.getreg('+'), '\r\n$', '\n', ''))
    vim.fn.setpos('.', cursor_save)
end

vim.api.nvim_exec([[
    augroup ReplaceCrLfOnPaste
        autocmd!
        autocmd TextYankPost * lua ReplaceCrLfOnPaste()
    augroup END
]], false)
