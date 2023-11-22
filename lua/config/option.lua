vim.g.mapleader = " "
vim.g.maplocalleader = " "
local opt = vim.opt

-- Os options
opt.mouse = "a"
opt.clipboard = "" --"unnamed" --"unnamedplus"
opt.autochdir = false
-- If you want/need a persistent undotree uncomment line 10 or 11 according to your OS and uncomment line 12
-- opt.undodir = os.getenv("LOCALAPPDATA") .. "/nvim-data/undodir" -- Use this for Windows (unless you use git bashor similar)
-- opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Use this for Linux
-- opt.undofile = true

-- Number options
opt.number = true
opt.relativenumber = true
-- opt.colorcolumn = 81
opt.laststatus = 0

-- Indent options
opt.smartindent = true
opt.autoindent = true
opt.expandtab = true
opt.smarttab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.showtabline = 4

-- Search options
opt.hlsearch = true
opt.incsearch = true

-- Text options
opt.wrap = false
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- Window options
opt.ruler = true
opt.cursorline = true
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.background = "dark"

-- Scroll options
opt.scrolloff = 4 -- Lines of context
opt.sidescrolloff = 8 -- Columns of context

-- Other
opt.formatoptions = "jqlt"
opt.hidden = true

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
