vim.g.mapleader = " "
vim.g.maplocalleader = " "

local kmap = vim.keymap

-- Resize window using <alt> hjkl keys
kmap.set("n", "<M-k>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
kmap.set("n", "<M-j>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
kmap.set("n", "<M-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
kmap.set("n", "<M-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Quit
kmap.set("n", "<Leader>Q", "<cmd>q!<CR>", { desc = "Forced exit" })
kmap.set("n", "<Leader>qf", "<cmd>q!<CR>", { desc = "Forced exit" })
kmap.set("n", "<Leader>qq", "<cmd>q<CR>", { desc = "Exit neovim" })

-- better indenting
kmap.set("v", "<", "<gv")
kmap.set("v", ">", ">gv")

-- Alternate way to save
kmap.set("n", "<Leader>W", "<cmd>w!<CR>", { desc = "Forced save" })
kmap.set("n", "<Leader>wf", "<cmd>w!<CR>", { desc = "Forced save" })
kmap.set("n", "<Leader>ww", "<cmd>w<CR>", { desc = "Save file" })

-- Add , : or ; at the end of line
kmap.set("n", "<Leader>;", "A;<Esc>", { desc = "Add ; at the end of line" })
kmap.set("n", "<Leader>:", "A:<Esc>", { desc = "Add : at the end of line" })
kmap.set("n", "<Leader>,", "A,<Esc>", { desc = "Add , at the end of line" })

-- Vim Terminal Controls
kmap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Terminal escape to normal mode" })
kmap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", { desc = "Terminal change window left" })
kmap.set("t", "<C-h>", "<C-\\><C-N><C-w>j", { desc = "Terminal change window up" })
kmap.set("t", "<C-h>", "<C-\\><C-N><C-w>k", { desc = "Terminal change window down" })
kmap.set("t", "<C-h>", "<C-\\><C-N><C-w>l", { desc = "Terminal change window right" })
kmap.set("t", "<C-w>t", "<C-w>s:terminal<CR>", { desc = "Open horizontal terminal" })

-- Plugin keys
-- lazy
kmap.set("n", "<leader>l", "<cmd>:Lazy<cr>", { desc = "Lazy" })
