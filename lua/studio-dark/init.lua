local studio_dark = {}

studio_dark.colors = {
	bg           = "#111216",
	bg_dark      = "#0c0d10",
	bg_light     = "#1a1d24",
	bg_lighter   = "#23262f",

	fg           = "#d7dae0",
	fg_dark      = "#a7adb8",
	fg_gutter    = "#5b6270",

	border       = "#2a2f3a",
	cursorline   = "#1b1f27",
	selection    = "#253047",

	red          = "#f06d6d",
	orange       = "#e6a86b",
	yellow       = "#e7d58c",
	green        = "#7fcf9b",
	cyan         = "#73c7ff",
	blue         = "#5ea7ff",
	purple       = "#b48ef7",

	comment      = "#6b7280",
}

function studio_dark.load()
	vim.cmd("hi clear")

	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end

	vim.g.colors_name = "studio-dark"
	vim.o.background = "dark"
	vim.o.termguicolors = true

	local c = studio_dark.colors

	local hl = function(group, opts)
		vim.api.nvim_set_hl(0, group, opts)
	end

	hl("Normal",         { fg = c.fg, bg = c.bg })
	hl("NormalNC",       { fg = c.fg, bg = c.bg_dark })
	hl("NormalFloat",    { fg = c.fg, bg = c.bg_light })

	hl("FloatBorder",    { fg = c.border, bg = c.bg_light })
	hl("FloatTitle",     { fg = c.blue, bold = true })

	hl("CursorLine",     { bg = c.cursorline })
	hl("CursorColumn",   { bg = c.cursorline })
	hl("ColorColumn",    { bg = c.cursorline })

	hl("LineNr",         { fg = c.fg_gutter })
	hl("CursorLineNr",   { fg = c.blue, bold = true })

	hl("Visual",         { bg = c.selection })
	hl("Search",         { fg = c.bg, bg = c.yellow })
	hl("IncSearch",      { fg = c.bg, bg = c.orange })

	hl("VertSplit",      { fg = c.border })
	hl("WinSeparator",   { fg = c.border })

	hl("StatusLine",     { fg = c.fg, bg = c.bg_light })
	hl("StatusLineNC",   { fg = c.comment, bg = c.bg_dark })

	hl("TabLine",        { fg = c.comment, bg = c.bg_light })
	hl("TabLineSel",     { fg = c.fg, bg = c.bg })
	hl("TabLineFill",    { bg = c.bg_dark })

	hl("Pmenu",          { fg = c.fg, bg = c.bg_light })
	hl("PmenuSel",       { fg = c.fg, bg = c.selection })
	hl("PmenuThumb",     { bg = c.fg_gutter })

	hl("SignColumn",     { bg = c.bg })
	hl("FoldColumn",     { fg = c.comment, bg = c.bg })

	hl("Comment",        { fg = c.comment, italic = true })

	hl("Keyword",        { fg = c.red })
	hl("Statement",      { fg = c.red })
	hl("Conditional",    { fg = c.red })
	hl("Repeat",         { fg = c.red })

	hl("Function",       { fg = c.yellow })
	hl("Identifier",     { fg = c.fg })

	hl("String",         { fg = c.green })
	hl("Character",      { fg = c.green })

	hl("Number",         { fg = c.orange })
	hl("Boolean",        { fg = c.orange })
	hl("Float",          { fg = c.orange })

	hl("Type",           { fg = c.cyan })
	hl("StorageClass",   { fg = c.cyan })
	hl("Structure",      { fg = c.cyan })

	hl("Constant",       { fg = c.purple })
	hl("Special",        { fg = c.blue })

	hl("Operator",       { fg = c.fg_dark })
	hl("Delimiter",      { fg = c.fg_dark })

	hl("Error",          { fg = c.red, bold = true })
	hl("Todo",           { fg = c.blue, bold = true })

	hl("@keyword",       { link = "Keyword" })
	hl("@function",      { link = "Function" })
	hl("@function.call", { link = "Function" })
	hl("@method",        { link = "Function" })

	hl("@string",        { link = "String" })
	hl("@number",        { link = "Number" })
	hl("@boolean",       { link = "Boolean" })

	hl("@type",          { link = "Type" })
	hl("@type.builtin",  { fg = c.cyan })

	hl("@constant",      { link = "Constant" })
	hl("@operator",      { link = "Operator" })

	hl("@comment",       { link = "Comment" })
	hl("@punctuation",   { link = "Delimiter" })

	hl("@variable",      { fg = c.fg })
	hl("@property",      { fg = c.fg })

	hl("DiagnosticError", { fg = c.red })
	hl("DiagnosticWarn",  { fg = c.yellow })
	hl("DiagnosticInfo",  { fg = c.blue })
	hl("DiagnosticHint",  { fg = c.green })

	hl("DiagnosticVirtualTextError", { fg = c.red, bg = c.bg_light })
	hl("DiagnosticVirtualTextWarn",  { fg = c.yellow, bg = c.bg_light })
	hl("DiagnosticVirtualTextInfo",  { fg = c.blue, bg = c.bg_light })
	hl("DiagnosticVirtualTextHint",  { fg = c.green, bg = c.bg_light })

	hl("DiffAdd",    { bg = "#1d2b24" })
	hl("DiffChange", { bg = "#222b36" })
	hl("DiffDelete", { bg = "#332222" })
	hl("DiffText",   { bg = "#2d3a4d" })

	hl("GitSignsAdd",    { fg = c.green, bg = c.bg })
	hl("GitSignsChange", { fg = c.yellow, bg = c.bg })
	hl("GitSignsDelete", { fg = c.red, bg = c.bg })

	hl("TelescopeNormal",         { fg = c.fg, bg = c.bg })
	hl("TelescopeBorder",         { fg = c.border, bg = c.bg })
	hl("TelescopePromptNormal",   { fg = c.fg, bg = c.bg_light })
	hl("TelescopePromptBorder",   { fg = c.blue, bg = c.bg_light })
	hl("TelescopePromptTitle",    { fg = c.bg, bg = c.blue, bold = true })
	hl("TelescopeSelection",      { bg = c.cursorline })
	hl("TelescopeSelectionCaret", { fg = c.blue })
	hl("TelescopeMatching",       { fg = c.yellow, bold = true })

	hl("NeoTreeNormal",        { fg = c.fg, bg = c.bg_dark })
	hl("NeoTreeNormalNC",      { fg = c.fg, bg = c.bg_dark })
	hl("NeoTreeWinSeparator",  { fg = c.border, bg = c.bg_dark })

	hl("NeoTreeDirectoryName", { fg = c.blue })
	hl("NeoTreeRootName",      { fg = c.cyan, bold = true })

	hl("NeoTreeGitAdded",      { fg = c.green })
	hl("NeoTreeGitModified",   { fg = c.yellow })
	hl("NeoTreeGitDeleted",    { fg = c.red })

	hl("NvimTreeNormal",       { fg = c.fg, bg = c.bg_dark })
	hl("NvimTreeNormalNC",     { fg = c.fg, bg = c.bg_dark })
	hl("NvimTreeWinSeparator", { fg = c.border, bg = c.bg_dark })

	hl("BufferLineFill",             { bg = c.bg_dark })

	hl("BufferLineBackground",       {
		fg = c.comment,
		bg = c.bg_dark,
	})

	hl("BufferLineBufferSelected",   {
		fg = c.fg,
		bg = c.bg,
		bold = true,
	})

	hl("BufferLineSeparator",        {
		fg = c.border,
		bg = c.bg_dark,
	})

	hl("BufferLineIndicatorSelected", {
		fg = c.blue,
		bg = c.bg,
	})

	hl("WhichKey",         { fg = c.blue })
	hl("WhichKeyGroup",    { fg = c.cyan })
	hl("WhichKeyDesc",     { fg = c.fg })
	hl("WhichKeySeparator",{ fg = c.comment })

	hl("CmpDocumentation",       { fg = c.fg, bg = c.bg_light })
	hl("CmpDocumentationBorder", { fg = c.border, bg = c.bg_light })

	hl("Directory", { fg = c.blue })
	hl("Title",     { fg = c.blue, bold = true })
	hl("MatchParen",{ fg = c.yellow, bold = true })
end

return studio_dark