local function get_var(my_var_name, default_value)
  s, v = pcall(function()
    return vim.api.nvim_get_var(my_var_name)
  end)
  if s then return v else return default_value end
end

local background = get_var('g:voodoo_background', nil)
local variant = get_var('g:voodoo_variant', nil)

local Color, colors, Group, groups, styles = require("colorbuddy").setup()

local grey_0
if background == 'hard' then
    grey_0 = '#0F1419'
elseif background == 'soft' then
    grey_0 = '#3a3a3a'
else
    grey_0 = '#222D31'
end

local grey_1      = '#5c5c5c'
local grey_2      = '#828282'
local grey_3      = '#adadad'
local grey_4      = '#d1d1d1'
local grey_5      = '#ededed'
local text_color  = '#d8d8d8'
local grey_accent = '#373b41'

local theme_0    = "#a50f15"
local theme_1    = "#cb181d"
local theme_2    = "#ef3c2c"
local theme_3    = "#fb6b4b"
local theme_4    = "#fc9373"
local theme_5    = "#fcbca2"
local theme_6    = "#fee1d3"
local theme_fire = "#CF222B"

if variant == 'light' then
    Color.new('grey_accent', grey_accent)
    Color.new('text_color',  '#37474F')
    Color.new('grey_0',      '#F1F3F4')
    Color.new('grey_1',      grey_3)
    Color.new('grey_2',      grey_2)
    Color.new('grey_3',      grey_1)
    Color.new('grey_4',      grey_0)
    Color.new('theme_0',     theme_0)
    Color.new('theme_1',     theme_1)
    Color.new('theme_2',     theme_2)
    Color.new('theme_3',     theme_3)
    Color.new('theme_4',     theme_4)
    Color.new('theme_5',     theme_5)
    Color.new('theme_6',     theme_6)
    Color.new('theme_fire',  theme_fire)
else
    Color.new('grey_accent', grey_accent)
    Color.new('text_color',  text_color)
    Color.new('grey_0',      grey_0)
    Color.new('grey_1',      grey_1)
    Color.new('grey_2',      grey_2)
    Color.new('grey_3',      grey_3)
    Color.new('grey_4',      grey_4)
    Color.new('theme_0',     theme_0)
    Color.new('theme_1',     theme_1)
    Color.new('theme_2',     theme_2)
    Color.new('theme_3',     theme_3)
    Color.new('theme_4',     theme_4)
    Color.new('theme_5',     theme_5)
    Color.new('theme_6',     theme_6)
    Color.new('theme_fire',  theme_fire)
end

-- Color assignments

Group.new('Normal',              colors.text_color, colors.grey_0,      styles.NONE)
--
Group.new('Comment',             colors.grey_2,     colors.none,        styles.NONE)
--
Group.new("Constant",            colors.theme_4,    colors.none,        styles.NONE)
Group.new("String",              colors.theme_0,    colors.none,        styles.NONE)
Group.new('Character',           colors.theme_6,    colors.none,        styles.NONE)
Group.new("Number",              colors.theme_4,    colors.none,        styles.NONE)
Group.new('Boolean',             colors.theme_4,    colors.none,        styles.NONE)
Group.new("Float",               colors.theme_4,    colors.none,        styles.NONE)
--
Group.new("Identifier",          colors.theme_6,    colors.none,        styles.NONE)
Group.new('Function',            colors.theme_3,    colors.none,        styles.NONE)
--
Group.new("Statement",           colors.theme_5,    colors.none,        styles.NONE)
Group.new("Conditional",         colors.theme_5,    colors.none,        styles.NONE)
Group.new("Repeat",              colors.theme_5,    colors.none,        styles.NONE)
Group.new("Label",               colors.theme_5,    colors.none,        styles.italic)
Group.new("Operator",            colors.none,       colors.none,        styles.NONE)
Group.new("Keyword",             colors.theme_5,    colors.none,        styles.italic)
Group.new("Exception",           colors.theme_5,    colors.none,        styles.NONE)
--
Group.new("PreProc",             colors.theme_1,    colors.none,        styles.NONE)
Group.new("Include",             colors.theme_3,    colors.none,        styles.NONE)
Group.new("Define",              colors.theme_1,    colors.none,        styles.NONE)
Group.new("Macro",               colors.theme_1,    colors.none,        styles.NONE)
Group.new("PreCondit",           colors.theme_1,    colors.none,        styles.NONE)
--
Group.new("Type",                colors.theme_2,    colors.none,        styles.italic)
Group.new("StorageClass",        colors.theme_2,    colors.none,        styles.NONE)
Group.new("Structure",           colors.theme_2,    colors.none,        styles.NONE)
Group.new("Typedef",             colors.theme_2,    colors.none,        styles.NONE)
--
Group.new("Special",             colors.theme_1,    colors.none,        styles.NONE)
Group.new("SpecialChar",         colors.theme_1,    colors.none,        styles.NONE)
Group.new("Tag",                 colors.theme_1,    colors.none,        styles.NONE)
Group.new("Delimiter",           colors.theme_1,    colors.none,        styles.NONE)
Group.new("SpecialComment",      colors.theme_1,    colors.none,        styles.NONE)
Group.new("Debug",               colors.theme_1,    colors.none,        styles.NONE)
--
Group.new('Underlined',          colors.theme_6,    colors.none,        styles.bold)
Group.new('Ignore',              colors.theme_1,    colors.none,        styles.bold)
Group.new('Error',               colors.theme_fire, colors.none,        styles.bold)
Group.new("Todo",                colors.theme_6,    colors.none,        styles.NONE)
--
Group.new('TabLineSel',          colors.grey_4,     colors.grey_0,      styles.bold )
Group.new('TabLineSelSeparator', colors.theme_5,    colors.none,        styles.none)
Group.new('TabLine',             colors.grey_3,     colors.grey_1,      styles.none)
Group.new('TabLineSeparator',    colors.grey_1,     colors.none,        styles.none)
Group.new('TablineFill',         colors.theme_3,    colors.grey_0,      styles.none)
Group.new('StatusLine',          colors.grey_3,     colors.grey_accent, styles.none)
Group.new('StatusLineNC',        colors.grey_1,     colors.grey_accent, styles.none)
Group.new('Conceal',             colors.grey_0,     colors.grey_4,      styles.none)
Group.new('VertSplit',           colors.grey_2,     colors.none,        styles.none)
--
Group.new('ErrorMsg',            colors.grey_0,     colors.theme_fire,  styles.bold)
Group.new('WarningMsg',          colors.grey_4,     colors.grey_2,      styles.bold)
Group.new("Title",               colors.grey_3,     colors.none,        styles.none)
Group.new("CursorColumn",        colors.none,       colors.grey_accent, styles.NONE)
Group.new("LineNr",              colors.grey_2,     colors.grey_0,      styles.NONE)
Group.new("CursorLineNr",        colors.theme_2,    colors.grey_accent, styles.NONE)
Group.new("Line",                colors.text_color, colors.none,        styles.bold)
Group.new("SignColumn",          colors.theme_fire, colors.grey_0,      styles.NONE)
Group.new("ColorColumn",         colors.none,       colors.grey_accent, styles.none)
Group.new("Cursor",              colors.grey_0,     colors.grey_3,      styles.none)
Group.new("CursorLine",          colors.none,       colors.grey_accent, styles.none)
Group.new("iCursor",             colors.grey_0,     colors.grey_3,      styles.none)
Group.new("EndOfBuffer",         colors.none,       colors.none,        styles.none)
Group.new("MatchParen",          colors.none,       colors.grey_2,      styles.none)
Group.new("NonText",             colors.none,       colors.none,        styles.none)
Group.new("PMenu",               colors.text_color, colors.grey_accent, styles.none)
Group.new("QuickFixLine",        colors.grey_0,     colors.theme_5,     styles.none)
Group.new("qfFileName",          colors.theme_0,    colors.none,        styles.none)
Group.new("PmenuSbar",           colors.grey_3,     colors.grey_0,      styles.none)
Group.new("PMenuSel",            colors.theme_3,    colors.grey_0,      styles.none)
Group.new("PmenuThumb",          colors.grey_0,     colors.grey_2,      styles.none)
Group.new("NormalFloat",         colors.text_color, colors.grey_accent, styles.none)
Group.new("SpecialKey",          colors.grey_2,     colors.none,        styles.none)
Group.new("SpellBad",            groups.String,     colors.none,        styles.underline)
Group.new("SpellCap",            colors.theme_fire, colors.grey_0,      styles.none)
Group.new("SpellLocal",          colors.grey_4,     colors.grey_0,      styles.none)
Group.new("SpellRare",           colors.grey_4,     colors.grey_0,      styles.none)
Group.new("Visual",              colors.grey_0,     colors.theme_2,     styles.none)
Group.new("VisualNOS",           colors.grey_0,     colors.text_color,  styles.none)
Group.new("Whitespace",          colors.grey_2,     colors.grey_0,      styles.none)
Group.new("Folded",              colors.grey_2,     colors.grey_accent, styles.none)

-- Git gutters and diffs

Group.new('DiffAdd',    colors.grey_0, colors.theme_2,    styles.none)
Group.new('DiffChange', colors.grey_0, colors.theme_5,    styles.none)
Group.new('DiffDelete', colors.grey_0, colors.theme_fire, styles.none)
Group.new('DiffText',   colors.grey_0, colors.text_color, styles.none)

-- FZF

Group.new('fzf1', colors.grey_4, colors.grey_0, styles.none)
Group.new('fzf2', colors.grey_4, colors.grey_0, styles.none)
Group.new('fzf3', colors.grey_4, colors.grey_0, styles.none)

-- Neovim

Group.new("healthError",   colors.theme_1,    colors.theme_fire, styles.none)
Group.new("healthSuccess", colors.theme_1,    colors.theme_fire, styles.none)
Group.new("healthWarning", colors.theme_fire, colors.theme_fire, styles.none)
Group.new("TermCursorNC",  colors.grey_0,     colors.theme_fire, styles.none)
Group.new("IncSearch",     colors.grey_4,     colors.theme_fire, styles.underline)
Group.new("Search",        colors.grey_0,     colors.theme_fire, styles.none)

-- vim

Group.new('vimcommand',      groups.Statement,  colors.none)
Group.new('vimLet',          groups.vimcommand, colors.none)
Group.new('vimFuncVar',      groups.identifier, colors.none)
Group.new('vimNotFunc',      groups.identifier, colors.none)
Group.new('vimCommentTitle', groups.PreProc,    colors.none)
Group.new('vimIsCommand',    colors.none,       colors.none)
Group.new('vimFuncSID',      groups.Special,    colors.none)
Group.new('vimMapModKey',    groups.vimFuncSID, colors.none)
Group.new('vimMapLhs',       colors.none,       colors.none)
Group.new('vimNotation',     colors.theme_1,    colors.none)
Group.new('vimBracket',      groups.Delimiter,  colors.none)
Group.new('vimMap',          groups.vimcommand, colors.none)
Group.new('vimNotFunc',      groups.vimcommand, colors.none)
Group.new('nvimMap',         groups.vimMap,     colors.none)

-- markdown

Group.new("markdownH1",                 colors.theme_1,    colors.none, styles.bold)
Group.new("markdownH2",                 colors.theme_2,    colors.none, styles.bold)
Group.new("markdownH3",                 colors.theme_3,    colors.none, styles.bold)
Group.new("markdownH4",                 colors.theme_4,    colors.none, styles.bold)
Group.new("markdownH5",                 colors.theme_5,    colors.none, styles.bold)
Group.new("markdownH6",                 colors.theme_6,    colors.none, styles.bold)
Group.new("markdownRule",               groups.markdownH2, colors.none,     styles.bold)
Group.new("markdownItalic",             colors.theme_0,    colors.none,     styles.italic)
Group.new("markdownBold",               colors.theme_0,    colors.none,     styles.bold)
Group.new("markdownBoldItalic",         colors.theme_0,    colors.none,     styles.bold + styles.italic)
Group.new("markdownCodeDelimiter",      colors.theme_0,    colors.none,     styles.bold)
Group.new("markdownCode",               colors.theme_0,    colors.none,     styles.none)
Group.new("markdownCodeBlock",          colors.theme_0,    colors.none,     styles.none)
Group.new("markdownFootnoteDefinition", colors.theme_0,    colors.none,     styles.italic)
Group.new("markdownListMarker",         colors.theme_0,    colors.none,     styles.bold)
Group.new("markdownLineBreak",          colors.theme_0,    colors.none,     styles.underline)

-- Lua

Group.new('luaFunctionCall', groups.Function, groups.Function, groups.Function)

--                             Python

Group.new('pythonoperator', groups.Operator, groups.Operator, styles.none)

-- Treesitter

Group.new('TSVariableBuiltin', groups.Special,     groups.Special,     styles.none) -- self
Group.new('TSMethod',          groups.Function,    groups.Function,    styles.none) -- self.method()
Group.new('TSConstant',        groups.Constant,    groups.Constant,    styles.none) -- self.variable
Group.new('TSKeywordOperator', groups.Conditional, groups.Conditional, styles.none) -- is and not

-- Telescope

Group.new("TelescopeMatching"       , colors.theme_2 , colors.none , styles.bold)
Group.new("TelescopeSelection"      , colors.theme_1 , colors.none , styles.bold)
Group.new("TelescopeSelectionCaret" , colors.theme_2 , colors.none , styles.bold)
Group.new("TelescopePromptPrefix"   , colors.theme_2 , colors.none , styles.bold)
Group.new("TelescopeBorder"         , colors.theme_0 , colors.none , styles.bold)
Group.new("TelescopePromptBorder"   , colors.theme_1 , colors.none , styles.bold)
Group.new("TelescopeResultsBorder"  , colors.theme_3 , colors.none , styles.bold)
Group.new("TelescopePreviewBorder"  , colors.theme_4 , colors.none , styles.bold)

-- Terminal
vim.api.nvim_set_var('terminal_color_0',  theme_2)
vim.api.nvim_set_var('terminal_color_1',  theme_3)
vim.api.nvim_set_var('terminal_color_2',  theme_2)
vim.api.nvim_set_var('terminal_color_3',  theme_3)
vim.api.nvim_set_var('terminal_color_4',  theme_5)
vim.api.nvim_set_var('terminal_color_5',  theme_0)
vim.api.nvim_set_var('terminal_color_6',  theme_6)
vim.api.nvim_set_var('terminal_color_7',  text_color)
vim.api.nvim_set_var('terminal_color_8',  theme_2)
vim.api.nvim_set_var('terminal_color_9',  theme_3)
vim.api.nvim_set_var('terminal_color_10', theme_2)
vim.api.nvim_set_var('terminal_color_11', theme_5)
vim.api.nvim_set_var('terminal_color_12', theme_0)
vim.api.nvim_set_var('terminal_color_13', theme_3)
vim.api.nvim_set_var('terminal_color_14', theme_6)
vim.api.nvim_set_var('terminal_color_15', text_color)
