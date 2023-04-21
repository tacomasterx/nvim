local kmap = vim.keymap

-- Resize window using <alt> hjkl keys
kmap.set("n", "<M-k>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
kmap.set("n", "<M-j>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
kmap.set("n", "<M-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
kmap.set("n", "<M-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Resize window using <alt> hjkl keys
kmap.set("n", "<C-k>", "<C-w>k", { desc = "Increase window height" })
kmap.set("n", "<C-j>", "<C-w>j", { desc = "Decrease window height" })
kmap.set("n", "<C-h>", "<C-w>h", { desc = "Decrease window width" })
kmap.set("n", "<C-l>", "<C-w>l", { desc = "Increase window width" })
--
-- Tab navigation
kmap.set("n", "<TAB>", "<cmd>bnext<CR>", { desc = "Move to next tab" })
kmap.set("n", "<S-TAB>", "<cmd>bprevious<CR>", { desc = "Move to previous tab" })

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
kmap.set("n", "<C-w>t", "<C-w>s:terminal<CR>", { desc = "Open horizontal terminal" })

-- Plugin keys
-- lazy
kmap.set("n", "<leader>l", "<cmd>:Lazy<cr>", { desc = "Lazy" })

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- NvimTree
vim.keymap.set('n', "<leader>fe", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree"} )

-- LSP
---- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "Go to declaration" }, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" }, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
