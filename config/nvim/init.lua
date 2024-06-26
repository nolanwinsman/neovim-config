-- lot of information taken from
-- https://www.youtube.com/watch?v=qb6fPgZMRF4
-- lazy package manager
-- installs lazy if not already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "


require("lazy").setup("plugins")

require("keybinds")
require("settings")
require("impatient") -- for faster loading

require("mason-config")
require("null-ls-config")

-- lsp
require('lsp-config.language-servers')
require("lsp-config.null-ls")
require("lsp-config.nvim-cmp")

require("lualine-config")
require("treesitter-config")
