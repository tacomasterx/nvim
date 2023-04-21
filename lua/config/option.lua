vim.g.mapleader = " "
vim.g.maplocalleader = " "
local opt = vim.opt

opt.relativenumber = true
-- opt.colorcolumn = 81
opt.laststatus = 0
opt.smartindent = true
opt.autoindent = true
opt.expandtab = true
opt.smarttab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.showtabline = 4
opt.formatoptions = "jqlt"
opt.hidden = true
-- opt.nowrap = true
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.ruler = true
opt.mouse = "a"
opt.cursorline = true
opt.splitbelow = true
opt.splitright = true
opt.clipboard = "unnamedplus"
opt.background = "dark"
opt.sw = 2
opt.autochdir = true
opt.termguicolors = true
opt.scrolloff = 4 -- Lines of context
opt.sidescrolloff = 8 -- Columns of context
-- Enable syntax highlighting
vim.cmd("syntax enable")

-- Enable filetype detection
vim.cmd("filetype on")

-- Enable filetype-specific indenting
vim.cmd("filetype indent on")

-- Enable filetype-specific plugins
vim.cmd("filetype plugin on")

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

-- function! SetPsTerminal()
--     opt.shell=powershell.exe
--     opt.shellxquote=
--     let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command '
--     let &shellquote   = ''
--     let &shellpipe    = '| Out-File -Encoding UTF8 %s'
--     let &shellredir   = '| Out-File -Encoding UTF8 %s'
-- endfunction
