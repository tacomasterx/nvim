local kmap = vim.keymap
local writer_mode_flag = false
local toggle_numbers = function()
    if vim.opt.relativenumber:get() then
        vim.opt.relativenumber = false
    else
        vim.opt.relativenumber = true
    end
    if vim.opt.number:get() then
        vim.opt.number = false
    else
        vim.opt.number = true
    end
end

local toggle_spell = function(language)
    if vim.opt.spell:get() then
        vim.opt.spell = false
    else
        vim.opt.spell = true
        vim.opt.spelllang = language
    end
end

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

-- Tab navigation
kmap.set("n", "<TAB>", "<cmd>bnext<CR>", { desc = "Move to next tab" })
kmap.set("n", "<S-TAB>", "<cmd>bprevious<CR>", { desc = "Move to previous tab" })

-- Quit
-- kmap.set("n", "<Leader>Q", "<cmd>q!<CR>", { desc = "Forced exit" })
-- kmap.set("n", "<Leader>qf", "<cmd>q!<CR>", { desc = "Forced exit" })
-- kmap.set("n", "<Leader>qq", "<cmd>q<CR>", { desc = "Exit neovim" })
-- kmap.set("n", "<Leader>qw", "<cmd>wq<CR>", { desc = "Save file and exit" })

-- better indenting
kmap.set("v", "<", "<gv")
kmap.set("v", ">", ">gv")

-- Move selected line / block of text in visual mode
-- shift + k to move up
-- kmap.set("n", "K", "ddkP", { desc = "Move current line up"})
-- -- shift + j to move down
-- kmap.set("n", "J", "ddp", { desc = "Move current line down"})
-- shift + k to move up
kmap.set("v", "K", "<cmd>move '<-2<CR>gv=gv", { desc = "Move selected lines up" })
-- shift + j to move down
kmap.set("v", "J", "<cmd>move '>+1<CR>gv=gv", { desc = "Move selected lines down" })
-- Shift + j to append line
kmap.set("n", "J", "mzJ'z", { desc = "Append line below to current line" })
--
-- ThePrimagen paste
kmap.set("x", "<leader>p", "\"_dP", { desc = "Paste ignoring buffer" })
-- ThePrimagen executable (Linux only)
kmap.set("n", "<leader>xe", "<cmd>!chmod +x %<CR>", { desc = "Makes current file executable" })
-- asbjornhaland yank
kmap.set({ "n", "v" }, "<leader>y", "\"+y", { desc = "Yanks to clipboard" })
kmap.set("n", "<leader>Y", "\"+Y", { desc = "Yanks content after cursor to clipboard" })

-- Alternate way to save
-- kmap.set("n", "<Leader>W", "<cmd>w!<CR>", { desc = "Forced save" })
-- kmap.set("n", "<Leader>wf", "<cmd>w!<CR>", { desc = "Forced save" })
-- kmap.set("n", "<Leader>ww", "<cmd>w<CR>", { desc = "Save file" })
-- kmap.set("n", "<Leader>wq", "<cmd>wq<CR>", { desc = "Save file and exit" })

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

-- Buffer control
kmap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Buffer delete" })
kmap.set("n", "<leader>ba", "<cmd>%bd|e#|bd#<CR>", { desc = "Delete all but current buffer" })
kmap.set("n", "<leader>bf", "<cmd>bfirst<CR>", { desc = "Move to first buffer" })
kmap.set("n", "<leader>bl", "<cmd>blast<CR>", { desc = "Move to last buffer" })

-- Plugin keys
-- Floaterm
kmap.set("n", "<leader>to", "<cmd>FloatermNew<CR>", { desc = "Open new floating terminal" })
kmap.set("n", "<leader>tt", "<cmd>FloatermToggle<CR>", { desc = "Toggle floating terminal" })
kmap.set("n", "<leader>tg", "<cmd>FloatermNew --name=lazygit --title=lazygit --height=0.8 --width=0.8 lazygit<CR>", { desc = "Open floating lazygit" })
kmap.set("n", "<leader>tn", "<cmd>FloatermNext<CR>", { desc = "Switch to next floating terminal" })
kmap.set("n", "<leader>tp", "<cmd>FloatermPrev<CR>", { desc = "Switch to previous floating terminal" })

-- lazy
kmap.set("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Lazy" })

--lazygit
kmap.set("n", "<leader>lg", "<cmd>FloatermNew --name=lazygit --title=lazygit --height=0.8 --width=0.8 lazygit<CR>", { desc = "Open floating lazygit" })

-- Mason
kmap.set("n", "<leader>lm", "<cmd>Mason<cr>", { desc = "Mason" })

-- Colorizer
kmap.set('n', '<leader>ct', "<cmd>ColorizerToggle<cr>", { desc = "Toggle colorizer" })

-- telescope
local builtin = require('telescope.builtin')
kmap.set('n', '<leader>ff', builtin.find_files, { desc = "Fuzzy find files" })
kmap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live grep" })
kmap.set('n', '<leader>fb', builtin.buffers, { desc = "Buffer selector" })
kmap.set('n', '<leader>fh', builtin.help_tags, { desc = "Help tags" })

-- NvimTree
kmap.set('n', "<leader>fe", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

-- Harpoon
kmap.set('n', "<leader>bm", "<cmd>lua require('harpoon.mark').add_file()<CR>", { desc = "Harpoon mark file" })
kmap.set('n', "<leader>bl", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "Harpoon toggle saved files menu" })
kmap.set("n", "<leader>bn", "<cmd>lua require('harpoon.ui').nav_next()<CR>", { desc = "Harpoon move to next saved file" })
kmap.set("n", "<leader>bp", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", { desc = "Harpoon move to previous saved file" })

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
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, {desc = "LspConfig: add workspace folder"}, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, {desc = "LspConfig: remove workspace folder"}, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, {desc = "LspConfig: list workspace folders"}, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, {desc = "LspConfig: type definition"}, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {desc = "LspConfig: rename"}, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {desc = "LspConfig: code action"}, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, {desc = "LspConfig: remove workspace folder"}, opts)
        vim.keymap.set('n', '<space>fo', function()
            vim.lsp.buf.format { async = true }
        end, { desc = "Format file" }, opts)
    end,
})

-- Nvim Dap
kmap.set("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle breakpoint" })
kmap.set("n", "<leader>ds", "<cmd>lua require'dap'.continue()<CR>", { desc = "Launch, stop or resume debug session" })
kmap.set("n", "<F5>", "<cmd>lua require'dap'.continue()<CR>", { desc = "Launch, stop or resume debug session" })
kmap.set("n", "<leader>dp", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Step through code: previous" })
kmap.set("n", "<F10>", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Step through code: previous" })
kmap.set("n", "<leader>dn", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Step through code: next" })
kmap.set("n", "<F11>", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Step through code: next" })
kmap.set("n", "<leader>dx", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Exit debugging session" })
kmap.set("n", "<F12>", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Exit debugging session" })

-- Vim Test
kmap.set("n", "<leader>tsn", "<cmd>TestNearest<CR>", { desc = "Test nearest to cursor" })
kmap.set("n", "<leader>tsf", "<cmd>TestFile<CR>", { desc = "All tests from current file" })
kmap.set("n", "<leader>tss", "<cmd>TestSuite<CR>", { desc = "Performs all test from current project" })
kmap.set("n", "<leader>tsl", "<cmd>TestLast<CR>", { desc = "Runs the last test" })
kmap.set("n", "<leader>tsv", "<cmd>TestVisit<CR>", { desc = "Visits the test file from which you last run your tests" })

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

-- nvim Trouble
kmap.set("n", "<leader>xx", function() require("trouble").toggle() end, { desc = "Toggle the trouble list"})
kmap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end, { desc = "Toggle the workspace diagnostics"})
kmap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end, { desc = "Toggle the document diagnostics"})
kmap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end, { desc = "Toggle the quickfix list"})
kmap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end, { desc = "Toggle the items from location list"})
kmap.set("n", "gR", function() require("trouble").toggle("lsp_references") end, { desc = "Toggle the lsp preferences"})

-- Zen Mode
-- Toggle ZenMode
kmap.set("n", "<leader>zz", "<cmd>ZenMode<CR>", {desc= "Toggle Zen Mode"})

-- Twilight
-- Toggle Twilight
kmap.set("n", "<leader>zt", "<cmd>Twilight<CR>", {desc= "Toggle Twilight"})

-- Simple Writer Mode
kmap.set( "n", "<leader>zwe", function()
    toggle_numbers()
    toggle_spell("en_us")
    vim.cmd([[  
        PencilToggle  
        Twilight
    ]])
end
, {desc = "Toggle a simple writer mode in english."})
kmap.set( "n", "<leader>zws", function()
    toggle_numbers()
    toggle_spell("es_mx")
    vim.cmd([[  
        PencilToggle  
        Twilight
    ]])
end
, {desc = "Toggle a simple writer mode in spanish."})

-- Full Writer Mode
-- ZenMode + Twilight + Pencil + no numbers writer mode.
kmap.set("n", "<leader>zfe",function()
    if writer_mode_flag then
        vim.opt.relativenumber = true
        vim.opt.number = true
        vim.cmd("PencilOff")
        toggle_spell("en_us")
        if vim.opt.relativenumber:get() == true and vim.opt.number:get() == true then
            require("zen-mode").toggle({})
        end
        writer_mode_flag = false
        return
    end
    vim.opt.relativenumber = false
    vim.opt.number = false
    vim.cmd("PencilSoft")
    toggle_spell("en_us")
    if vim.opt.relativenumber:get() == false and vim.opt.number:get() == false then
        require("zen-mode").toggle({})
    end
    writer_mode_flag = true
end, {desc = "Toggle full writer mode English"})
kmap.set("n", "<leader>zfs",function()
    if writer_mode_flag then
        vim.opt.relativenumber = true
        vim.opt.number = true
        vim.cmd("PencilOff")
        toggle_spell("es_mx")
        if vim.opt.relativenumber:get() == true and vim.opt.number:get() == true then
            require("zen-mode").toggle({})
        end
        writer_mode_flag = false
        return
    end
    vim.opt.relativenumber = false
    vim.opt.number = false
    vim.cmd("PencilSoft")
    toggle_spell("es_mx")
    if vim.opt.relativenumber:get() == false and vim.opt.number:get() == false then
        require("zen-mode").toggle({})
    end
    writer_mode_flag = true
end, {desc = "Toggle full writer mode Spanish"})


-- Toggle numbers
kmap.set("n", "<leader>zn", function()
    toggle_numbers()
end, {desc = "Toggle numbers"})

-- Toggle spell
kmap.set("n", "<leader>zse", function()
    toggle_spell("en_us")
end, {desc = "Toggle spell English"})
kmap.set("n", "<leader>zss", function()
    toggle_spell("en_us")
end, {desc = "Toggle spell Spanish"})

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
