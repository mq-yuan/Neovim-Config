-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

local system = vim.loop.os_uname().sysname
if system == "Darwin" then
  -- Mac 系统特定配置
  vim.g.os = "Mac"
elseif system == "Windows" or system == "Windows_NT" then
  -- Windows 系统特定配置
  vim.g.os = "Windows"
elseif system == "Linux" then
  -- Linux 系统特定配置
  vim.g.os = "Linux"
end
-- terminal <C-\><C-n> to back normal mode

require "lazy_setup"
require "polish"
