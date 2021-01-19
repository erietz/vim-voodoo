local Color, colors, Group, groups, styles = require("colorbuddy").setup()

local background        = "#161712"
local foreground        = "#ECD2AB"
local voodoo_0          = "#21221B"
local voodoo_1          = "#2C2E24"
local voodoo_2          = "#37392D"
local voodoo_3          = "#424536"
local voodoo_4          = "#585b48"
local voodoo_5          = "#646751"
local voodoo_6          = "#6f725a"
local voodoo_purple     = "#78556D"
local voodoo_forest     = "#645D26"
local voodoo_green      = "#286D34"
local voodoo_aqua       = "#5EBC9D"
local voodoo_seafoam    = "#7BC274"
local voodoo_crimson    = "#A8303C"
local voodoo_blue       = "#687B8C"
local voodoo_yellow     = "#D49F3A"
local voodoo_orange     = "#CC8223"
local voodoo_orange_red = "#DE5A2A"
local voodoo_cream      = "#DFBA84"
local voodoo_white      = "#FAF4EE"
local voodoo_brown      = "#BA6731"
local voodoo_fire       = "#CF222B"

-- Color definitions
Color.new('background',        background        )
Color.new('foreground',        foreground        )
Color.new('voodoo_0',          voodoo_0          )
Color.new('voodoo_1',          voodoo_1          )
Color.new('voodoo_2',          voodoo_2          )
Color.new('voodoo_3',          voodoo_3          )
Color.new('voodoo_4',          voodoo_4          )
Color.new('voodoo_5',          voodoo_5          )
Color.new('voodoo_6',          voodoo_6          )
Color.new('voodoo_purple',     voodoo_purple)
Color.new('voodoo_forest',     voodoo_forest     )
Color.new('voodoo_green',      voodoo_green      )
Color.new('voodoo_aqua',       voodoo_aqua       )
Color.new('voodoo_seafoam',    voodoo_seafoam    )
Color.new('voodoo_crimson',    voodoo_crimson    )
Color.new('voodoo_blue',       voodoo_blue       )
Color.new('voodoo_yellow',     voodoo_yellow     )
Color.new('voodoo_orange',     voodoo_orange     )
Color.new('voodoo_orange_red', voodoo_orange_red )
Color.new('voodoo_cream',      voodoo_cream      )
Color.new('voodoo_white',      voodoo_white      )
Color.new('voodoo_brown',      voodoo_brown      )
Color.new('voodoo_fire',       voodoo_fire       )

-- Color assignments
Group.new('Normal',              colors.foreground,        colors.voodoo_0,      styles.NONE)
--
Group.new('Comment',             colors.voodoo_4,          colors.none,          styles.NONE)
--
Group.new("Constant",            colors.voodoo_purple,     colors.none,          styles.NONE)
Group.new("String",              colors.voodoo_cream,      colors.none,          styles.NONE)
Group.new('Character',           colors.voodoo_purple,     colors.none,          styles.NONE)
Group.new("Number",              colors.voodoo_purple,     colors.none,          styles.NONE)
Group.new('Boolean',             colors.voodoo_purple,     colors.none,          styles.NONE)
Group.new("Float",               colors.voodoo_purple,     colors.none,          styles.NONE)
--
Group.new("Identifier",          colors.voodoo_orange_red, colors.none,          styles.NONE)
Group.new('Function',            colors.voodoo_crimson,    colors.none,          styles.bold)
--
Group.new("Statement",           colors.voodoo_yellow,     colors.none,          styles.NONE)
Group.new("Conditional",         colors.voodoo_yellow,     colors.none,          styles.NONE)
Group.new("Repeat",              colors.voodoo_yellow,     colors.none,          styles.NONE)
Group.new("Label",               colors.voodoo_yellow,     colors.none,          styles.italic)
Group.new("Operator",            colors.voodoo_aqua,       colors.none,          styles.NONE)
Group.new("Keyword",             colors.voodoo_yellow,     colors.none,          styles.italic)
Group.new("Exception",           colors.voodoo_yellow,     colors.none,          styles.NONE)
--
Group.new("PreProc",             colors.voodoo_blue,       colors.none,          styles.NONE)
Group.new("Include",             colors.voodoo_blue,       colors.none,          styles.NONE)
Group.new("Define",              colors.voodoo_blue,       colors.none,          styles.NONE)
Group.new("Macro",               colors.voodoo_blue,       colors.none,          styles.NONE)
Group.new("PreCondit",           colors.voodoo_blue,       colors.none,          styles.NONE)
--
Group.new("Type",                colors.voodoo_forest,     colors.none,          styles.italic)
Group.new("StorageClass",        colors.voodoo_cream,      colors.none,          styles.NONE)
Group.new("Structure",           colors.voodoo_cream,      colors.none,          styles.NONE)
Group.new("Typedef",             colors.voodoo_cream,      colors.none,          styles.NONE)
--
Group.new("Special",             colors.voodoo_orange,     colors.none,          styles.NONE)
Group.new("SpecialChar",         colors.voodoo_orange,     colors.none,          styles.NONE)
Group.new("Tag",                 colors.voodoo_orange,     colors.none,          styles.NONE)
Group.new("Delimiter",           colors.voodoo_orange,     colors.none,          styles.NONE)
Group.new("SpecialComment",      colors.voodoo_orange,     colors.none,          styles.NONE)
Group.new("Debug",               colors.voodoo_orange,     colors.none,          styles.NONE)
--
Group.new('Underlined',          colors.voodoo_orange,     colors.none,          styles.bold)
Group.new('Ignore',              colors.voodoo_orange,     colors.none,          styles.bold)
Group.new('Error',               colors.voodoo_fire,       colors.none,          styles.bold)
Group.new("Todo",                colors.voodoo_seafoam,    colors.none,          styles.NONE)
--
Group.new('TabLineSel',          colors.voodoo_brown,      colors.voodoo_1, styles.bold )
Group.new('TabLineSelSeparator', colors.voodoo_yellow,     colors.none,          styles.none)
Group.new('TabLine',             colors.voodoo_4,          colors.voodoo_2,      styles.none)
Group.new('TabLineSeparator',    colors.voodoo_2,          colors.none,          styles.none)
Group.new('TablineFill',        colors.voodoo_brown,       colors.voodoo_1,          styles.none)
Group.new('StatusLine',          colors.voodoo_brown,      colors.voodoo_1,      styles.none)
Group.new('StatusLineNC',        colors.voodoo_2,          colors.voodoo_0,      styles.none)
Group.new('Conceal',             colors.voodoo_3,          colors.none,          styles.none)
Group.new('VertSplit',           colors.voodoo_3,          colors.none,          styles.none)
--
Group.new('ErrorMsg',            colors.voodoo_1,          colors.voodoo_fire, styles.bold)
Group.new('WarningMsg',          colors.voodoo_5,          colors.voodoo_cream,  styles.bold)
Group.new("Title",               colors.voodoo_4,          colors.none,          styles.none)
Group.new("CursorColumn",        colors.voodoo_1,          colors.none,          styles.NONE)
Group.new("LineNr",              colors.voodoo_4,          colors.none,          styles.NONE)
Group.new("CursorLineNr",        colors.voodoo_brown,      colors.none,          styles.NONE)
Group.new("Line",                colors.voodoo_cream,      colors.none,          styles.bold)
Group.new("SignColumn",          colors.none,              colors.none,          styles.NONE)
Group.new("ColorColumn",         colors.none,              colors.voodoo_1,      styles.none)
Group.new("Cursor",              colors.voodoo_1,          colors.voodoo_4,      styles.none)
Group.new("CursorLine",          colors.none,              colors.background,    styles.none)
Group.new("iCursor",             colors.voodoo_1,          colors.voodoo_1,      styles.none)
Group.new("EndOfBuffer",         colors.none,              colors.none,          styles.none)
Group.new("MatchParen",          colors.voodoo_1,          colors.voodoo_3,      styles.none)
Group.new("NonText",             colors.none,              colors.none,          styles.none)
Group.new("PMenu",               colors.voodoo_brown,      colors.voodoo_1,      styles.none)
Group.new("PmenuSbar",           colors.voodoo_4,          colors.voodoo_1,      styles.none)
Group.new("PMenuSel",            colors.voodoo_crimson,    colors.voodoo_0,      styles.none)
Group.new("PmenuThumb",          colors.voodoo_1,          colors.voodoo_3,      styles.none)
Group.new("SpecialKey",          colors.voodoo_3,          colors.voodoo_3,      styles.none)
Group.new("SpellBad",            colors.voodoo_orange,     colors.voodoo_1,      styles.none)
Group.new("SpellCap",            colors.voodoo_fire,       colors.voodoo_1,      styles.none)
Group.new("SpellLocal",          colors.voodoo_5,          colors.voodoo_1,      styles.none)
Group.new("SpellRare",           colors.voodoo_6,          colors.voodoo_1,      styles.none)
Group.new("Visual",              colors.voodoo_4,          colors.voodoo_yellow, styles.none)
Group.new("VisualNOS",           colors.voodoo_2,          colors.voodoo_1,      styles.none)
Group.new("Whitespace",          colors.voodoo_3,          colors.voodoo_0,      styles.none)
-- Git gutters and diffs
Group.new('DiffAdd',             colors.voodoo_green,      colors.voodoo_1,      styles.none)
Group.new('DiffChange',          colors.voodoo_yellow,     colors.voodoo_1,      styles.none)
Group.new('DiffDelete',          colors.voodoo_fire,       colors.voodoo_1,      styles.none)
Group.new('DiffText',            colors.voodoo_cream,      colors.voodoo_1,      styles.none)
-- FZF
Group.new('fzf1',               colors.voodoo_crimson,      colors.voodoo_0,      styles.none)
Group.new('fzf2',               colors.voodoo_brown,      colors.voodoo_1,      styles.none)
Group.new('fzf3',               colors.voodoo_brown,      colors.voodoo_1,      styles.none)
-- "+- Neovim Support -+
Group.new("healthError",         colors.voodoo_orange,     colors.voodoo_fire,   styles.none)
Group.new("healthSuccess",       colors.voodoo_orange_red, colors.voodoo_fire,   styles.none)
Group.new("healthWarning",       colors.voodoo_fire,       colors.voodoo_fire,   styles.none)
Group.new("TermCursorNC",        colors.voodoo_1,          colors.voodoo_fire,   styles.none)
Group.new("IncSearch",           colors.voodoo_6,          colors.voodoo_fire,   styles.underline)
Group.new("Search",              colors.voodoo_1,          colors.voodoo_fire,   styles.none)
-- vim language highlighting
Group.new('vimcommand',          groups.Statement,         colors.none)
Group.new('vimLet',              groups.vimcommand,        colors.none)
Group.new('vimFuncVar',          groups.identifier,        colors.none)
Group.new('vimCommentTitle',     groups.PreProc,           colors.none)
Group.new('vimIsCommand',        colors.none,              colors.none)
Group.new('vimFuncSID',          groups.Special,           colors.none)
Group.new('vimMapModKey',        groups.vimFuncSID,        colors.none)
Group.new('vimMapLhs',           colors.none,              colors.none)
Group.new('vimNotation',         colors.voodoo_orange,     colors.none)
Group.new('vimBracket',          groups.Delimiter,         colors.none)
Group.new('vimMap',              groups.vimcommand,        colors.none)
Group.new('nvimMap',             groups.vimMap,            colors.none)
-- Markdown
Group.new("markdownError",       colors.voodoo_crimson,    colors.none)
-- lua language
Group.new('luaFunctionCall'      ,                         groups.Function       ,           groups.Function , groups.Function)
-- Python
Group.new('pythonoperator'       ,                         groups.Operator       ,           groups.Operator , styles.none)

-- Terminal
vim.api.nvim_set_var('terminal_color_0',   voodoo_forest)
vim.api.nvim_set_var('terminal_color_1',   voodoo_crimson)
vim.api.nvim_set_var('terminal_color_2',   voodoo_green)
vim.api.nvim_set_var('terminal_color_3',   voodoo_crimson)
vim.api.nvim_set_var('terminal_color_4',   voodoo_yellow)
vim.api.nvim_set_var('terminal_color_5',   voodoo_blue)
vim.api.nvim_set_var('terminal_color_6',   voodoo_aqua)
vim.api.nvim_set_var('terminal_color_7',   voodoo_cream)
vim.api.nvim_set_var('terminal_color_8',   voodoo_forest)
vim.api.nvim_set_var('terminal_color_9',   voodoo_crimson)
vim.api.nvim_set_var('terminal_color_10',  voodoo_green)
vim.api.nvim_set_var('terminal_color_11',  voodoo_yellow)
vim.api.nvim_set_var('terminal_color_12',  voodoo_blue)
vim.api.nvim_set_var('terminal_color_13',  voodoo_crimson)
vim.api.nvim_set_var('terminal_color_14',  voodoo_aqua)
vim.api.nvim_set_var('terminal_color_15',  voodoo_cream)
