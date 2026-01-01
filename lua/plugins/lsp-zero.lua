return {
--   {
--     'VonHeikemen/lsp-zero.nvim',
--     branch = 'v2.x',
--     dependencies = {
--       -- LSP Support
--       -- {'neovim/nvim-lspconfig'},             -- Required
--       -- {                                      -- Optional
--       --   'williamboman/mason.nvim',
--       --   build = function()
--       --     pcall(vim.cmd, 'MasonUpdate')
--       --   end,
--       -- },
--       -- {'williamboman/mason-lspconfig.nvim'}, -- Optional
--
--       -- Autocompletion
--     },
--   },
      -- {
      --     'L3MON4D3/LuaSnip',
      --     version = "v2.*",
      --     run = "make install_jsregexp"
      -- },     -- Required
      -- -- Snippets helpers
      -- {'saadparwaiz1/cmp_luasnip'},
      -- {'rafamadriz/friendly-snippets'},

      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
}
