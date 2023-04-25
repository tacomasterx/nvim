local kmap = vim.keymap
-- kmap.set({"n", "v"}, "K", "<nop>")
-- kmap.set({"n", "v"}, "J", "<nop>")
kmap.set({ "n", "v" }, "Q", "<nop>")

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
kmap.set("n", "<Leader>qw", "<cmd>wq<CR>", { desc = "Save file and exit" })

-- better indenting
kmap.set("v", "<", "<gv")
kmap.set("v", ">", ">gv")

-- Move selected line / block of text in visual mode
-- shift + k to move up
-- kmap.set("n", "K", "ddkP", { desc = "Move current line up"})
-- -- shift + j to move down
-- kmap.set("n", "J", "ddp", { desc = "Move current line down"})
-- shift + k to move up
kmap.set("x", "K", "<cmd>move '<-2<CR>gv=gv", { desc = "Move selected lines up" })
-- shift + j to move down
kmap.set("x", "J", "<cmd>move '>+1<CR>gv=gv", { desc = "Move selected lines down" })
-- Ctrl + j to append line
kmap.set("n", "J", "mzJ'z", { desc = "Append line below to current line" })
--
-- ThePrimagen paste
kmap.set("x", "<leader>p", "\"_dP", { desc = "Paste ignoring buffer" })
-- ThePrimagen executable (Linux only)
kmap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Makes current file executable" })
-- asbjornhaland yank
kmap.set({ "n", "v" }, "<leader>y", "\"+y", { desc = "Yanks to clipboard" })
kmap.set("n", "<leader>Y", "\"+Y", { desc = "Yanks content after cursor to clipboard" })

-- Alternate way to save
kmap.set("n", "<Leader>W", "<cmd>w!<CR>", { desc = "Forced save" })
kmap.set("n", "<Leader>wf", "<cmd>w!<CR>", { desc = "Forced save" })
kmap.set("n", "<Leader>ww", "<cmd>w<CR>", { desc = "Save file" })
kmap.set("n", "<Leader>wq", "<cmd>wq<CR>", { desc = "Save file and exit" })

-- Add , : or ; at the end of line
kmap.set("n", "<Leader>;", "A;<Esc>", { desc = "Add ; at the end of line" })
kmap.set("n", "<Leader>:", "A:<Esc>", { desc = "Add : at the end of line" })
kmap.set("n", "<Leader>,", "A,<Esc>", { desc = "Add , at the end of line" })

-- Vim Terminal Controls
kmap.set("t", "<Leader><Esc>", "<C-\\><C-n>", { desc = "Terminal escape to normal mode" })
kmap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", { desc = "Terminal change window left" })
kmap.set("t", "<C-h>", "<C-\\><C-N><C-w>j", { desc = "Terminal change window up" })
kmap.set("t", "<C-h>", "<C-\\><C-N><C-w>k", { desc = "Terminal change window down" })
kmap.set("t", "<C-h>", "<C-\\><C-N><C-w>l", { desc = "Terminal change window right" })
kmap.set("n", "<C-w>t", "<C-w>s:terminal<CR>", { desc = "Open horizontal terminal" })

-- Plugin keys
-- Floaterm
kmap.set("n", "<leader>to", "<cmd>FloatermNew<CR>", { desc = "Open new floating terminal" })
kmap.set("n", "<leader>tt", "<cmd>FloatermToggle<CR>", { desc = "Toggle floating terminal" })
kmap.set("n", "<leader>tg", "<cmd>FloatermNew --name=lazygit --title=lazygit --height=0.8 --width=0.8 lazygit<CR>", { desc = "Open floating lazygit" })
kmap.set("n", "<leader>tn", "<cmd>FloatermNext<CR>", { desc = "Switch to next floating terminal" })
kmap.set("n", "<leader>tp", "<cmd>FloatermPrev<CR>", { desc = "Switch to previous floating terminal" })

-- lazy
kmap.set("n", "<leader>l", "<cmd>:Lazy<cr>", { desc = "Lazy" })

-- telescope
local builtin = require('telescope.builtin')
kmap.set('n', '<leader>ff', builtin.find_files, { desc = "Fuzzy find files" })
kmap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live grep" })
kmap.set('n', '<leader>fb', builtin.buffers, { desc = "Buffer selector" })
kmap.set('n', '<leader>fh', builtin.help_tags, { desc = "Help tags" })

-- NvimTree
kmap.set('n', "<leader>fe", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

-- LSP
--
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
        -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<space>fo', function()
            vim.lsp.buf.format { async = true }
        end, { desc = "Format file" }, opts)
    end,
})

-- Nvim Comment
kmap.set("n", "<leader>/", "<Plug>(comment_toggle_linewise_current)", { desc = "Toggle single line comment" })
kmap.set("v", "<leader>/", "<Plug>(comment_toggle_linewise_visual)", { desc = "Toggle line comment (visual)" })
-- '<Plug>(comment_toggle_linewise_current)'
-- or '<Plug>(comment_toggle_linewise_count)'

-- Undotree
kmap.set("n", "<leader>ut", "<cmd>UndotreeToggle<CR>", { desc = "Toggle Undotree" })

-- Hop
kmap.set("n", "<leader>hl", "<cmd>HopLineStart<CR>", { desc = "Hop to chosen line" })
kmap.set("n", "<leader>hL", "<cmd>HopLineStartMW<CR>", { desc = "Hop to chosen line across buffers" })
kmap.set("n", "<leader>hw", "<cmd>HopWord<CR>", { desc = "Hop to chosen word" })
kmap.set("n", "<leader>hW", "<cmd>HopWordMW<CR>", { desc = "Hop to chosen word across buffers" })
kmap.set("n", "<leader>hc", "<cmd>HopChar2<CR>", { desc = "Hop to chosen character" })
kmap.set("n", "<leader>hC", "<cmd>HopChar2MW<CR>", { desc = "Hop to chosen character across buffers" })
kmap.set("n", "<leader>hh", "<cmd>HopChar1CurrentLine<CR>", { desc = "Hop to chosen character in current line" })

-- nvim Comp
local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local cmp = require('cmp')
local luasnip = require("luasnip")
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = {
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        -- `Tab` key to select option
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
                -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
                -- they way you will only jump inside the snippet region
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),
        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    }
})
