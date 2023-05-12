require("config.option")

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

require("lazy").setup("plugins")
-- require("nvim-treesitter.install").compilers = { "clang" } -- Required to a avoid a Windows Treesitter issue
require("config.plugin.init")
require("config.colors")
require("config.remap")
