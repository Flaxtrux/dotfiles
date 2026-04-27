local c = {
	bg = "#1a1a1a",
	bg_dark = "#111111",
	bg_light = "#2e2e2e",
	fg = "#c0c0c0",
	fg_dim = "#555555",
	fg_bright = "#d0d0d0",
	border = "#2e2e2e",
	none = "NONE",

	-- Colores
	keyword = "#C66B25", -- naranja óxido
	func = "#7aa2f7", -- azul apagado
	string = "#9ece6a", -- verde pastel
	type = "#ad8ee6", -- lila suave
	operator = "#c0c0c0", -- gris claro
	comment = "#555555", -- gris oscuro
}

vim.o.background = "dark"
vim.g.colors_name = "colorscheme"

local hi = vim.api.nvim_set_hl

-- Editor
hi(0, "Normal", { fg = c.fg, bg = c.bg })
hi(0, "NormalFloat", { fg = c.fg, bg = c.bg_dark })
hi(0, "NormalNC", { fg = c.fg_dim, bg = c.bg })
hi(0, "LineNr", { fg = c.fg_dim })
hi(0, "CursorLine", { bg = c.bg_light })
hi(0, "CursorLineNr", { fg = c.fg_bright, bold = true })
hi(0, "SignColumn", { fg = c.fg_dim, bg = c.bg })
hi(0, "VertSplit", { fg = c.border })
hi(0, "WinSeparator", { fg = c.border })
hi(0, "StatusLine", { fg = c.fg, bg = c.bg_dark })
hi(0, "StatusLineNC", { fg = c.fg_dim, bg = c.bg_dark })
hi(0, "Pmenu", { fg = c.fg, bg = c.bg_dark })
hi(0, "PmenuSel", { fg = c.fg_bright, bg = c.bg_light, bold = true })
hi(0, "PmenuThumb", { bg = c.operator })
hi(0, "TabLine", { fg = c.fg_dim, bg = c.bg_dark })
hi(0, "TabLineSel", { fg = c.fg_bright, bg = c.bg, bold = true })
hi(0, "TabLineFill", { bg = c.bg_dark })
hi(0, "Search", { fg = c.bg, bg = c.operator })
hi(0, "IncSearch", { fg = c.bg, bg = c.fg_bright, bold = true })
hi(0, "Visual", { bg = c.bg_light })
hi(0, "MatchParen", { fg = c.fg_bright, bold = true, underline = true })
hi(0, "NonText", { fg = c.border })
hi(0, "Folded", { fg = c.fg_dim, bg = c.bg_dark })
hi(0, "EndOfBuffer", { fg = c.border })

-- Syntax
hi(0, "Comment", { fg = c.comment, italic = true })
hi(0, "Constant", { fg = c.fg_bright })
hi(0, "String", { fg = c.string })
hi(0, "Character", { fg = c.string })
hi(0, "Identifier", { fg = c.fg })
hi(0, "Function", { fg = c.func, bold = true })
hi(0, "Statement", { fg = c.keyword })
hi(0, "Keyword", { fg = c.keyword, bold = true })
hi(0, "Conditional", { fg = c.keyword, bold = true })
hi(0, "Repeat", { fg = c.keyword, bold = true })
hi(0, "Operator", { fg = c.operator })
hi(0, "Type", { fg = c.type })
hi(0, "StorageClass", { fg = c.type })
hi(0, "Special", { fg = c.func })
hi(0, "Error", { fg = c.keyword, bold = true })
hi(0, "Todo", { fg = c.bg, bg = c.comment, bold = true })

-- Treesitter
hi(0, "@keyword", { fg = c.keyword, bold = true })
hi(0, "@keyword.function", { fg = c.keyword, bold = true })
hi(0, "@keyword.return", { fg = c.keyword, bold = true })
hi(0, "@function", { fg = c.func, bold = true })
hi(0, "@function.call", { fg = c.func })
hi(0, "@method", { fg = c.func, bold = true })
hi(0, "@method.call", { fg = c.func })
hi(0, "@string", { fg = c.string })
hi(0, "@type", { fg = c.type })
hi(0, "@type.builtin", { fg = c.type })
hi(0, "@variable", { fg = c.fg })
hi(0, "@parameter", { fg = c.fg })
hi(0, "@comment", { fg = c.comment, italic = true })
hi(0, "@operator", { fg = c.operator })
hi(0, "@punctuation", { fg = c.fg_dim })
hi(0, "@constant", { fg = c.fg_bright })
hi(0, "@constant.builtin", { fg = c.type })
hi(0, "@number", { fg = c.fg_bright })
hi(0, "@boolean", { fg = c.keyword })

-- Diagnostics
hi(0, "DiagnosticError", { fg = c.keyword })
hi(0, "DiagnosticWarn", { fg = c.string })
hi(0, "DiagnosticInfo", { fg = c.func })
hi(0, "DiagnosticHint", { fg = c.fg_dim })
hi(0, "DiagnosticUnderlineError", { underline = true, sp = c.keyword })

-- Telescope
hi(0, "TelescopeBorder", { fg = c.border })
hi(0, "TelescopeNormal", { fg = c.fg, bg = c.bg_dark })
hi(0, "TelescopeSelection", { fg = c.fg_bright, bg = c.bg_light, bold = true })
hi(0, "TelescopeMatching", { fg = c.func, bold = true })

-- NeoTree
hi(0, "NeoTreeNormal", { fg = c.fg, bg = c.bg_dark })
hi(0, "NeoTreeNormalNC", { fg = c.fg_dim, bg = c.bg_dark })
hi(0, "NeoTreeDirectoryName", { fg = c.func, bold = true })
hi(0, "NeoTreeFileName", { fg = c.fg })
hi(0, "NeoTreeGitModified", { fg = c.keyword })

-- Git
hi(0, "GitSignsAdd", { fg = c.string })
hi(0, "GitSignsChange", { fg = c.keyword })
hi(0, "GitSignsDelete", { fg = c.type })

-- Which-key
hi(0, "WhichKey", { fg = c.func, bold = true })
hi(0, "WhichKeyGroup", { fg = c.keyword })
hi(0, "WhichKeyDesc", { fg = c.fg })
hi(0, "WhichKeyFloat", { bg = c.bg_dark })
hi(0, "WhichKeyBorder", { fg = c.border })
