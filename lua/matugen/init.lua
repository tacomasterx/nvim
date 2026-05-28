local M = {}

local colors = {
    bg = "#222436",            -- Editor background
    bg_dark = "#1e2030",       -- Float windows, sidebars, statusline
    bg_dark1 = "#191B29",      -- Diagnostic virtual text, preview pane
    bg_highlight = "#2f334d",  -- Cursor line, selection, LSP references
    blue = "#82aaff",          -- Folder icons, functions, tags
    blue0 = "#3e68d7",         -- Prompt title, diff text, lualine insert
    blue1 = "#65bcff",         -- Types, includes, lualine normal separator
    blue5 = "#89ddff",         -- Operators, punctuation, delimiters
    blue7 = "#394b70",         -- Folded text, float borders, lualine B sections
    comment = "#636da6",       -- Comments, inactive UI elements
    cyan = "#86e1fc",          -- Preprocessor, built-in functions, hop cursor
    dark3 = "#545c7e",         -- Conceal, hop unmatched chars
    fg = "#c8d3f5",            -- Main text
    fg_dark = "#828bb8",       -- Inactive text, winbar, lualine C sections
    fg_gutter = "#3b4261",     -- Line numbers, sign column, indent markers
    green = "#c3e88d",         -- Strings, characters, terminal green
    green1 = "#4fd6be",        -- Object members, git staged, opened files
    green2 = "#41a6b5",        -- Telescope preview title
    magenta = "#c099ff",       -- Identifiers, keywords, constructors
    magenta2 = "#ff007c",      -- Hop primary jump target
    orange = "#ff966c",        -- Constants, numbers, booleans
    purple = "#fca7ea",        -- Image files, rare spelling, pinned buffers
    red = "#ff757f",           -- Errors, exceptions, git delete indicators
    teal = "#4fd6be",          -- Diagnostic hints, multi-selection
    terminal_black = "#444a73",-- Terminal colors 0 and 8
    yellow = "#ffc777",        -- Search highlight, todos, warnings
    git = {
        add = "#b8db87",       -- Git added lines
        change = "#7ca1f2",    -- Git modified lines
        delete = "#e26a75",    -- Git deleted lines
    },
}

function M.colorscheme()
    vim.cmd('highlight clear')
    vim.cmd('syntax reset')

    vim.o.background = 'dark'
    vim.g.colors_name = 'matugen'

    local set = vim.api.nvim_set_hl

    -- ─── Editor Base ───────────────────────────────────────────
    set(0, "Normal",          { bg = colors.bg,           fg = colors.fg })
    set(0, "NormalFloat",     { bg = colors.bg_dark,      fg = colors.fg })
    set(0, "NormalNC",        { bg = colors.bg_dark,      fg = colors.fg_dark })
    set(0, "ColorColumn",     { bg = colors.bg_highlight })
    set(0, "Conceal",         { fg = colors.dark3 })
    set(0, "Cursor",          { bg = colors.fg,           fg = colors.bg })
    set(0, "CursorLine",      { bg = colors.fg_gutter })
    set(0, "CursorColumn",    { bg = colors.fg_gutter })
    set(0, "CursorLineNr",    { fg = colors.yellow,       bold = true })
    set(0, "LineNr",          { fg = colors.fg_gutter })
    set(0, "SignColumn",      { bg = colors.bg,           fg = colors.fg_gutter })
    set(0, "VertSplit",       { fg = colors.bg_highlight })
    set(0, "WinSeparator",    { fg = colors.bg_highlight })
    set(0, "Folded",          { bg = colors.blue7,        fg = colors.comment })
    set(0, "FoldColumn",      { bg = colors.bg,           fg = colors.comment })
    set(0, "EndOfBuffer",     { fg = colors.bg })

    -- ─── Search ────────────────────────────────────────────────
    set(0, "Search",          { bg = colors.yellow,       fg = colors.bg })
    set(0, "IncSearch",       { bg = colors.orange,       fg = colors.bg })
    set(0, "CurSearch",       { bg = colors.orange,       fg = colors.bg })
    set(0, "Substitute",      { bg = colors.red,          fg = colors.bg })

    -- ─── Popup Menu ────────────────────────────────────────────
    set(0, "Pmenu",           { bg = colors.bg_dark,      fg = colors.fg })
    set(0, "PmenuSel",        { bg = colors.blue7,        fg = colors.fg })
    set(0, "PmenuSbar",       { bg = colors.bg_highlight })
    set(0, "PmenuThumb",      { bg = colors.dark3 })
    set(0, "FloatBorder",     { bg = colors.bg_dark,      fg = colors.blue7 })
    set(0, "FloatTitle",      { bg = colors.bg_dark,      fg = colors.blue,  bold = true })

    -- ─── Status Line ───────────────────────────────────────────
    set(0, "StatusLine",      { bg = colors.bg_dark,      fg = colors.fg_dark })
    set(0, "StatusLineNC",    { bg = colors.bg_dark,      fg = colors.fg_gutter })
    set(0, "WildMenu",        { bg = colors.blue,         fg = colors.bg })
    set(0, "WinBar",          { bg = colors.bg,           fg = colors.fg_dark })
    set(0, "WinBarNC",        { bg = colors.bg_dark,      fg = colors.fg_gutter })

    -- ─── Tab Line ──────────────────────────────────────────────
    set(0, "TabLine",         { bg = colors.bg_dark,      fg = colors.fg_gutter })
    set(0, "TabLineFill",     { bg = colors.bg_dark })
    set(0, "TabLineSel",      { bg = colors.bg,           fg = colors.blue,  bold = true })

    -- ─── Syntax ────────────────────────────────────────────────
    set(0, "Comment",         { fg = colors.comment,      italic = true })
    set(0, "Constant",        { fg = colors.orange })
    set(0, "String",          { fg = colors.green })
    set(0, "Character",       { fg = colors.green })
    set(0, "Number",          { fg = colors.orange })
    set(0, "Boolean",         { fg = colors.orange })
    set(0, "Float",           { fg = colors.orange })
    set(0, "Identifier",      { fg = colors.magenta })
    set(0, "Function",        { fg = colors.blue })
    set(0, "Statement",       { fg = colors.magenta })
    set(0, "Keyword",         { fg = colors.cyan,         italic = true })
    set(0, "Conditional",     { fg = colors.magenta })
    set(0, "Repeat",          { fg = colors.magenta })
    set(0, "Label",           { fg = colors.blue })
    set(0, "Operator",        { fg = colors.blue5 })
    set(0, "Exception",       { fg = colors.red })
    set(0, "PreProc",         { fg = colors.cyan })
    set(0, "Include",         { fg = colors.blue1 })
    set(0, "Define",          { fg = colors.magenta })
    set(0, "Macro",           { fg = colors.magenta })
    set(0, "PreCondit",       { fg = colors.cyan })
    set(0, "Type",            { fg = colors.blue1 })
    set(0, "StorageClass",    { fg = colors.blue1 })
    set(0, "Structure",       { fg = colors.blue1 })
    set(0, "Typedef",         { fg = colors.blue1 })
    set(0, "Special",         { fg = colors.blue5 })
    set(0, "SpecialChar",     { fg = colors.blue5 })
    set(0, "Tag",             { fg = colors.blue })
    set(0, "Delimiter",       { fg = colors.blue5 })
    set(0, "SpecialComment",  { fg = colors.comment,      italic = true })
    set(0, "Debug",           { fg = colors.orange })
    set(0, "Underlined",      { underline = true })
    set(0, "Error",           { fg = colors.red })
    set(0, "Todo",            { fg = colors.yellow,       bold = true })

    -- ─── Diagnostics ───────────────────────────────────────────
    set(0, "DiagnosticError",            { fg = colors.red })
    set(0, "DiagnosticWarn",             { fg = colors.yellow })
    set(0, "DiagnosticInfo",             { fg = colors.blue1 })
    set(0, "DiagnosticHint",             { fg = colors.teal })
    set(0, "DiagnosticOk",               { fg = colors.green })
    set(0, "DiagnosticUnderlineError",   { undercurl = true, sp = colors.red })
    set(0, "DiagnosticUnderlineWarn",    { undercurl = true, sp = colors.yellow })
    set(0, "DiagnosticUnderlineInfo",    { undercurl = true, sp = colors.blue1 })
    set(0, "DiagnosticUnderlineHint",    { undercurl = true, sp = colors.teal })
    set(0, "DiagnosticVirtualTextError", { fg = colors.red,    bg = colors.bg_dark1 })
    set(0, "DiagnosticVirtualTextWarn",  { fg = colors.yellow, bg = colors.bg_dark1 })
    set(0, "DiagnosticVirtualTextInfo",  { fg = colors.blue1,  bg = colors.bg_dark1 })
    set(0, "DiagnosticVirtualTextHint",  { fg = colors.teal,   bg = colors.bg_dark1 })

    -- ─── Git ───────────────────────────────────────────────────
    set(0, "DiffAdd",         { bg = colors.git.add,      fg = colors.bg })
    set(0, "DiffChange",      { bg = colors.git.change,   fg = colors.bg })
    set(0, "DiffDelete",      { bg = colors.git.delete,   fg = colors.bg })
    set(0, "DiffText",        { bg = colors.blue0,        fg = colors.bg })
    set(0, "GitSignsAdd",     { fg = colors.git.add })
    set(0, "GitSignsChange",  { fg = colors.git.change })
    set(0, "GitSignsDelete",  { fg = colors.git.delete })

    -- ─── Spelling ──────────────────────────────────────────────
    set(0, "SpellBad",        { undercurl = true, sp = colors.red })
    set(0, "SpellCap",        { undercurl = true, sp = colors.yellow })
    set(0, "SpellRare",       { undercurl = true, sp = colors.purple })
    set(0, "SpellLocal",      { undercurl = true, sp = colors.cyan })

    -- ─── Treesitter ────────────────────────────────────────────
    set(0, "@variable",               { fg = colors.fg })
    set(0, "@variable.builtin",       { fg = colors.red })
    set(0, "@variable.parameter",     { fg = colors.fg_dark })
    set(0, "@variable.member",        { fg = colors.green1 })
    set(0, "@constant",               { fg = colors.orange })
    set(0, "@constant.builtin",       { fg = colors.orange })
    set(0, "@constant.macro",         { fg = colors.magenta })
    set(0, "@string",                 { fg = colors.green })
    set(0, "@string.escape",          { fg = colors.blue5 })
    set(0, "@string.special",         { fg = colors.blue5 })
    set(0, "@character",              { fg = colors.green })
    set(0, "@number",                 { fg = colors.orange })
    set(0, "@boolean",                { fg = colors.orange })
    set(0, "@float",                  { fg = colors.orange })
    set(0, "@function",               { fg = colors.blue })
    set(0, "@function.builtin",       { fg = colors.cyan })
    set(0, "@function.macro",         { fg = colors.blue })
    set(0, "@function.method",        { fg = colors.blue })
    set(0, "@constructor",            { fg = colors.magenta })
    set(0, "@keyword",                { fg = colors.cyan,     italic = true })
    set(0, "@keyword.function",       { fg = colors.magenta,  italic = true })
    set(0, "@keyword.operator",       { fg = colors.magenta })
    set(0, "@keyword.return",         { fg = colors.magenta,  italic = true })
    set(0, "@operator",               { fg = colors.blue5 })
    set(0, "@punctuation.bracket",    { fg = colors.blue5 })
    set(0, "@punctuation.delimiter",  { fg = colors.blue5 })
    set(0, "@punctuation.special",    { fg = colors.blue5 })
    set(0, "@comment",                { fg = colors.comment,  italic = true })
    set(0, "@tag",                    { fg = colors.blue })
    set(0, "@tag.attribute",          { fg = colors.green1 })
    set(0, "@tag.delimiter",          { fg = colors.blue5 })
    set(0, "@type",                   { fg = colors.blue1 })
    set(0, "@type.builtin",           { fg = colors.blue1 })
    set(0, "@namespace",              { fg = colors.fg_dark })
    set(0, "@include",                { fg = colors.blue1 })
    set(0, "@exception",              { fg = colors.red })

    -- ─── LSP ───────────────────────────────────────────────────
    set(0, "LspReferenceText",        { bg = colors.bg_highlight })
    set(0, "LspReferenceRead",        { bg = colors.bg_highlight })
    set(0, "LspReferenceWrite",       { bg = colors.bg_highlight, underline = true })
    set(0, "LspSignatureActiveParameter", { fg = colors.yellow, bold = true })
    set(0, "LspInlayHint",            { fg = colors.comment,  bg = colors.bg_dark1, italic = true })

    -- ─── Terminal ──────────────────────────────────────────────
    set(0, "Terminal",        { bg = colors.bg,           fg = colors.fg })
    vim.g.terminal_color_0  = colors.terminal_black
    vim.g.terminal_color_1  = colors.red
    vim.g.terminal_color_2  = colors.green
    vim.g.terminal_color_3  = colors.yellow
    vim.g.terminal_color_4  = colors.blue
    vim.g.terminal_color_5  = colors.magenta
    vim.g.terminal_color_6  = colors.cyan
    vim.g.terminal_color_7  = colors.fg_dark
    vim.g.terminal_color_8  = colors.terminal_black
    vim.g.terminal_color_9  = colors.red
    vim.g.terminal_color_10 = colors.green
    vim.g.terminal_color_11 = colors.yellow
    vim.g.terminal_color_12 = colors.blue
    vim.g.terminal_color_13 = colors.magenta
    vim.g.terminal_color_14 = colors.cyan
    vim.g.terminal_color_15 = colors.fg

    -- ─── Hop ───────────────────────────────────────────────────
    set(0, "HopNextKey",       { fg = colors.magenta2,  bold = true })
    set(0, "HopNextKey1",      { fg = colors.blue,      bold = true })
    set(0, "HopNextKey2",      { fg = colors.blue0 })
    set(0, "HopUnmatched",     { fg = colors.dark3 })
    set(0, "HopCursor",        { fg = colors.cyan })
    set(0, "HopPreview",       { fg = colors.green1 })

    -- ─── Telescope ─────────────────────────────────────────────
    set(0, "TelescopeNormal",         { bg = colors.bg_dark,      fg = colors.fg })
    set(0, "TelescopeBorder",         { bg = colors.bg_dark,      fg = colors.blue7 })
    set(0, "TelescopeTitle",          { fg = colors.blue,         bold = true })
    set(0, "TelescopePromptNormal",   { bg = colors.bg_highlight, fg = colors.fg })
    set(0, "TelescopePromptBorder",   { bg = colors.bg_highlight, fg = colors.bg_highlight })
    set(0, "TelescopePromptTitle",    { bg = colors.blue0,        fg = colors.bg,   bold = true })
    set(0, "TelescopePromptPrefix",   { fg = colors.blue })
    set(0, "TelescopePromptCounter",  { fg = colors.comment })
    set(0, "TelescopeResultsNormal",  { bg = colors.bg_dark,      fg = colors.fg })
    set(0, "TelescopeResultsBorder",  { bg = colors.bg_dark,      fg = colors.blue7 })
    set(0, "TelescopeResultsTitle",   { fg = colors.comment })
    set(0, "TelescopePreviewNormal",  { bg = colors.bg_dark1,     fg = colors.fg })
    set(0, "TelescopePreviewBorder",  { bg = colors.bg_dark1,     fg = colors.blue7 })
    set(0, "TelescopePreviewTitle",   { bg = colors.green2,       fg = colors.bg,   bold = true })
    set(0, "TelescopeSelection",      { bg = colors.bg_highlight, fg = colors.fg })
    set(0, "TelescopeSelectionCaret", { fg = colors.blue })
    set(0, "TelescopeMultiSelection", { fg = colors.teal })
    set(0, "TelescopeMatching",       { fg = colors.yellow,       bold = true })

    -- ─── Nvim-tree ─────────────────────────────────────────────
    set(0, "NvimTreeNormal",          { bg = colors.bg_dark,      fg = colors.fg_dark })
    set(0, "NvimTreeNormalNC",        { bg = colors.bg_dark,      fg = colors.fg_dark })
    set(0, "NvimTreeRootFolder",      { fg = colors.blue,         bold = true })
    set(0, "NvimTreeFolderName",      { fg = colors.blue })
    set(0, "NvimTreeFolderIcon",      { fg = colors.blue0 })
    set(0, "NvimTreeOpenedFolderName",{ fg = colors.blue,         bold = true })
    set(0, "NvimTreeEmptyFolderName", { fg = colors.comment })
    set(0, "NvimTreeFileName",        { fg = colors.fg })
    set(0, "NvimTreeOpenedFile",      { fg = colors.blue1,        bold = true })
    set(0, "NvimTreeSpecialFile",     { fg = colors.yellow,       underline = true })
    set(0, "NvimTreeImageFile",       { fg = colors.purple })
    set(0, "NvimTreeIndentMarker",    { fg = colors.fg_gutter })
    set(0, "NvimTreeWinSeparator",    { fg = colors.bg_dark,      bg = colors.bg_dark })
    set(0, "NvimTreeEndOfBuffer",     { fg = colors.bg_dark })
    set(0, "NvimTreeCursorLine",      { bg = colors.bg_highlight })
    set(0, "NvimTreeSymlink",         { fg = colors.cyan })
    set(0, "NvimTreeExecFile",        { fg = colors.green,        bold = true })
    set(0, "NvimTreeGitNew",          { fg = colors.git.add })
    set(0, "NvimTreeGitDirty",        { fg = colors.git.change })
    set(0, "NvimTreeGitDeleted",      { fg = colors.git.delete })
    set(0, "NvimTreeGitStaged",       { fg = colors.green1 })
    set(0, "NvimTreeGitMerge",        { fg = colors.orange })
    set(0, "NvimTreeGitRenamed",      { fg = colors.purple })
    set(0, "NvimTreeGitIgnored",      { fg = colors.comment })
    set(0, "NvimTreeLiveFilterPrefix",{ fg = colors.magenta,      bold = true })
    set(0, "NvimTreeLiveFilterValue", { fg = colors.fg })
    set(0, "NvimTreeBookmark",        { fg = colors.yellow })

end

return M

