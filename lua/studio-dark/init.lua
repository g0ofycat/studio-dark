local studio_dark = {}

studio_dark.colors = {
	bg        = "#0f0f11",
	fg        = "#bcbec8",
	red_soft  = "#f19191",
	red_hard  = "#ec4949",
	red_vivid = "#fd3561",
	green     = "#8ee9b6",
	yellow    = "#f3eb8c",
	cyan      = "#6de5ff",
	gray_dim  = "#535665",
	gray_mid  = "#6a6f81",
	gray_ui   = "#454545",
}

function studio_dark.load()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end

	vim.g.colors_name   = "studio-dark"
	vim.o.background    = "dark"
	vim.o.termguicolors = true

	local c = studio_dark.colors
	local hl = function(group, opts)
		vim.api.nvim_set_hl(0, group, opts)
	end

	hl("Normal",              { fg = c.fg,       bg = c.bg })
	hl("DiffText",            { fg = c.red_soft })
	hl("ErrorMsg",            { fg = c.red_soft })
	hl("WarningMsg",          { fg = c.red_soft })
	hl("PreProc",             { fg = c.red_soft })
	hl("Exception",           { fg = c.red_soft })
	hl("Error",               { fg = c.red_soft })
	hl("DiffDelete",          { fg = c.red_soft })
	hl("GitGutterDelete",     { fg = c.red_soft })
	hl("GitGutterChangeDelete",{ fg = c.red_soft })
	hl("cssIdentifier",       { fg = c.red_soft })
	hl("cssImportant",        { fg = c.red_soft })
	hl("Type",                { fg = c.red_soft })
	hl("Identifier",          { fg = c.red_soft })
	hl("PMenuSel",            { fg = c.red_hard })
	hl("Constant",            { fg = c.red_hard })
	hl("Repeat",              { fg = c.red_hard })
	hl("DiffAdd",             { fg = c.red_hard })
	hl("GitGutterAdd",        { fg = c.red_hard })
	hl("cssIncludeKeyword",   { fg = c.red_hard })
	hl("Keyword",             { fg = c.red_hard })
	hl("IncSearch",           { fg = c.green })
	hl("PreCondit",           { fg = c.green })
	hl("Debug",               { fg = c.green })
	hl("SpecialChar",         { fg = c.green })
	hl("Conditional",         { fg = c.green })
	hl("Todo",                { fg = c.green })
	hl("Special",             { fg = c.green })
	hl("Label",               { fg = c.green })
	hl("Delimiter",           { fg = c.green })
	hl("Number",              { fg = c.green })
	hl("CursorLineNR",        { fg = c.green })
	hl("Define",              { fg = c.green })
	hl("MoreMsg",             { fg = c.green })
	hl("Tag",                 { fg = c.green })
	hl("String",              { fg = c.green })
	hl("MatchParen",          { fg = c.green })
	hl("Macro",               { fg = c.green })
	hl("DiffChange",          { fg = c.green })
	hl("GitGutterChange",     { fg = c.green })
	hl("cssColor",            { fg = c.green })
	hl("Function",            { fg = c.yellow })
	hl("Directory",           { fg = c.red_vivid })
	hl("markdownLinkText",    { fg = c.red_vivid })
	hl("javaScriptBoolean",   { fg = c.red_vivid })
	hl("Include",             { fg = c.red_vivid })
	hl("Storage",             { fg = c.red_vivid })
	hl("cssClassName",        { fg = c.red_vivid })
	hl("cssClassNameDot",     { fg = c.red_vivid })
	hl("Statement",           { fg = c.cyan })
	hl("Operator",            { fg = c.cyan })
	hl("cssAttr",             { fg = c.cyan })
	hl("Pmenu",               { fg = c.fg,       bg = c.gray_ui })
	hl("SignColumn",          {                  bg = c.bg })
	hl("Title",               { fg = c.fg })
	hl("LineNr",              { fg = c.gray_dim, bg = c.bg })
	hl("NonText",             { fg = c.gray_mid, bg = c.bg })
	hl("Comment",             { fg = c.gray_mid, italic = true })
	hl("SpecialComment",      { fg = c.gray_mid, italic = true })
	hl("CursorLine",          {                  bg = c.gray_ui })
	hl("TabLineFill",         {                  bg = c.gray_ui })
	hl("TabLine",             { fg = c.gray_dim, bg = c.gray_ui })
	hl("StatusLine",          { fg = c.fg,       bg = c.gray_ui, bold = true })
	hl("StatusLineNC",        { fg = c.fg,       bg = c.bg })
	hl("Search",              { fg = c.fg,       bg = c.gray_mid })
	hl("VertSplit",           { fg = c.gray_ui })
	hl("Visual",              {                  bg = c.gray_ui })
end


return studio_dark
