-- LSP stuff
vim.lsp.enable({
        "lua_ls",
        "bashls",
        "fish_lsp",
        "rust_analyzer",
        "denols",
        "html",
        "cssls",
        "jsonls",
        "clangd",
        "pylsp",
        "ruby_lsp",
        "gopls",
        "zls",
        "yamlls",
        "dockerls",
        "docker_compose_language_service",
        "arduino_language_server",
})

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "bashls",
        "fish_lsp",
        "rust_analyzer",
        "denols",
        "html",
        "cssls",
        "jsonls",
        "clangd",
        "pylsp",
        "ruby_lsp",
        -- "gopls",
        "zls",
        "yamlls",
        "dockerls",
        "docker_compose_language_service",
        "arduino_language_server",
    }
})

-- Lualine
require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})

-- Colorizer
require('colorizer').setup {
  'css';
  'javascript';
  'toml';
  html = {
    mode = 'foreground';
  }
}

