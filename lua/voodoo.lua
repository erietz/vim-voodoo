local Color, colors, Group, groups, styles = require("colorbuddy").setup()

-- ['#ededed', '#d1d1d1', '#adadad', '#828282', '#5c5c5c', '#2b2b2b']

local background     = '#3a3a3a'
local foreground     = '#d0d0d0'
local grey_0       = '#2b2b2b'
local grey_1       = '#5c5c5c'
local grey_2       = '#828282'
local grey_3       = '#adadad'
local grey_4       = '#d1d1d1'
local grey_5       = '#ededed'

local voodoo_blue    =  '#80b1d3'
local voodoo_orange  =  '#fdb462'
local voodoo_green   =  '#b3de69'
local voodoo_red     =  '#fb8072'
local voodoo_magenta =  '#bebada'
local voodoo_fire    =  '#fccde5'
local voodoo_yellow  =  '#ffffb3'
local voodoo_cyan    =  '#8dd3c7'


-- Color definitions
if vim.g.voodoo_variant == 'light' then
    Color.new('background',     foreground)
    Color.new('foreground',     background)
    Color.new('grey_0',       grey_4)
    Color.new('grey_1',       grey_3)
    Color.new('grey_2',       grey_2)
    Color.new('grey_3',       grey_1)
    Color.new('grey_4',       grey_0)
    Color.new('voodoo_red',     voodoo_red)
    Color.new('voodoo_green',   voodoo_green)
    Color.new('voodoo_blue',    voodoo_blue)
    Color.new('voodoo_yellow',  voodoo_yellow)
    Color.new('voodoo_magenta', voodoo_magenta)
    Color.new('voodoo_cyan',    voodoo_cyan)
    Color.new('voodoo_orange',  voodoo_orange)
    Color.new('voodoo_seafoam', voodoo_seafoam)
    Color.new('voodoo_brown',   voodoo_brown)
    Color.new('voodoo_fire',    voodoo_fire)
else
    Color.new('background',     background)
    Color.new('foreground',     foreground)
    Color.new('grey_0',       grey_0)
    Color.new('grey_1',       grey_1)
    Color.new('grey_2',       grey_2)
    Color.new('grey_3',       grey_3)
    Color.new('grey_4',       grey_4)
    Color.new('voodoo_red',     voodoo_red)
    Color.new('voodoo_green',   voodoo_green)
    Color.new('voodoo_blue',    voodoo_blue)
    Color.new('voodoo_yellow',  voodoo_yellow)
    Color.new('voodoo_magenta', voodoo_magenta)
    Color.new('voodoo_cyan',    voodoo_cyan)
    Color.new('voodoo_orange',  voodoo_orange)
    Color.new('voodoo_seafoam', voodoo_seafoam)
    Color.new('voodoo_brown',   voodoo_brown)
    Color.new('voodoo_fire',    voodoo_fire)
    Color.new('voodoo_grey',    voodoo_grey)
end

-- Color assignments
Group.new('Normal',              colors.foreground,           colors.background,    styles.NONE)
--
Group.new('Comment',             colors.grey_2,             colors.none,          styles.NONE)
--
Group.new("Constant",            colors.voodoo_magenta,       colors.none,          styles.NONE)
Group.new("String",              colors.voodoo_red,         colors.none,          styles.NONE)
Group.new('Character',           colors.voodoo_magenta,       colors.none,          styles.NONE)
Group.new("Number",              colors.voodoo_magenta,       colors.none,          styles.NONE)
Group.new('Boolean',             colors.voodoo_magenta,       colors.none,          styles.NONE)
Group.new("Float",               colors.voodoo_magenta,       colors.none,          styles.NONE)
--
Group.new("Identifier",          colors.voodoo_cyan,        colors.none,          styles.NONE)
Group.new('Function',            colors.voodoo_red,           colors.none,          styles.bold)
--
Group.new("Statement",           colors.voodoo_yellow,        colors.none,          styles.NONE)
Group.new("Conditional",         colors.voodoo_yellow,        colors.none,          styles.NONE)
Group.new("Repeat",              colors.voodoo_yellow,        colors.none,          styles.NONE)
Group.new("Label",               colors.voodoo_yellow,        colors.none,          styles.italic)
Group.new("Operator",            colors.voodoo_cyan,          colors.none,          styles.NONE)
Group.new("Keyword",             colors.voodoo_yellow,        colors.none,          styles.italic)
Group.new("Exception",           colors.voodoo_yellow,        colors.none,          styles.NONE)
--
Group.new("PreProc",             colors.voodoo_blue,          colors.none,          styles.NONE)
Group.new("Include",             colors.voodoo_blue,          colors.none,          styles.NONE)
Group.new("Define",              colors.voodoo_blue,          colors.none,          styles.NONE)
Group.new("Macro",               colors.voodoo_blue,          colors.none,          styles.NONE)
Group.new("PreCondit",           colors.voodoo_blue,          colors.none,          styles.NONE)
--
Group.new("Type",                colors.voodoo_green, colors.none,          styles.italic)
Group.new("StorageClass",        colors.voodoo_orange,        colors.none,          styles.NONE)
Group.new("Structure",           colors.voodoo_blue,        colors.none,          styles.NONE)
Group.new("Typedef",             colors.voodoo_green, colors.none,          styles.NONE)
--
Group.new("Special",             colors.voodoo_orange,        colors.none,          styles.NONE)
Group.new("SpecialChar",         colors.voodoo_orange,        colors.none,          styles.NONE)
Group.new("Tag",                 colors.voodoo_orange,        colors.none,          styles.NONE)
Group.new("Delimiter",           colors.voodoo_orange,        colors.none,          styles.NONE)
Group.new("SpecialComment",      colors.voodoo_orange,        colors.none,          styles.NONE)
Group.new("Debug",               colors.voodoo_orange,        colors.none,          styles.NONE)
--
Group.new('Underlined',          colors.voodoo_cyan,        colors.none,          styles.bold)
Group.new('Ignore',              colors.voodoo_orange,        colors.none,          styles.bold)
Group.new('Error',               colors.voodoo_fire,          colors.none,          styles.bold)
Group.new("Todo",                colors.voodoo_cyan,          colors.none,          styles.NONE)
--
Group.new('TabLineSel',          colors.grey_4,             colors.grey_0,      styles.bold )
Group.new('TabLineSelSeparator', colors.voodoo_yellow,        colors.none,          styles.none)
Group.new('TabLine',             colors.grey_3,             colors.grey_1,      styles.none)
Group.new('TabLineSeparator',    colors.grey_1,             colors.none,          styles.none)
Group.new('TablineFill',         colors.voodoo_red,           colors.grey_0,      styles.none)
Group.new('StatusLine',          colors.grey_4,             colors.grey_1,      styles.bold)
Group.new('StatusLineNC',        colors.grey_2,             colors.background,    styles.none)
Group.new('Conceal',             colors.grey_2,             colors.none,          styles.none)
Group.new('VertSplit',           colors.grey_2,             colors.none,          styles.none)
--
Group.new('ErrorMsg',            colors.grey_0,             colors.voodoo_fire,   styles.bold)
Group.new('WarningMsg',          colors.grey_4,             colors.foreground,    styles.bold)
Group.new("Title",               colors.grey_3,             colors.none,          styles.none)
Group.new("CursorColumn",        colors.grey_0,             colors.none,          styles.NONE)
Group.new("LineNr",              colors.grey_3,             colors.none,          styles.NONE)
Group.new("CursorLineNr",        colors.grey_4,             colors.none,          styles.NONE)
Group.new("Line",                colors.foreground,           colors.none,          styles.bold)
Group.new("SignColumn",          colors.none,                 colors.none,          styles.NONE)
Group.new("ColorColumn",         colors.none,                 colors.grey_1,      styles.none)
Group.new("Cursor",              colors.grey_0,             colors.grey_3,      styles.none)
Group.new("CursorLine",          colors.none,                 colors.background,    styles.none)
Group.new("iCursor",             colors.grey_0,             colors.grey_3,      styles.none)
Group.new("EndOfBuffer",         colors.none,                 colors.none,          styles.none)
Group.new("MatchParen",          colors.none,               colors.grey_2,      styles.none)
Group.new("NonText",             colors.none,                 colors.none,          styles.none)
Group.new("PMenu",               colors.foreground,           colors.grey_0,      styles.none)
Group.new("PmenuSbar",           colors.grey_3,             colors.grey_0,      styles.none)
Group.new("PMenuSel",            colors.voodoo_red,           colors.background,    styles.none)
Group.new("PmenuThumb",          colors.grey_0,             colors.grey_2,      styles.none)
Group.new("NormalFloat",         colors.foreground,           colors.grey_0,      styles.none)
Group.new("SpecialKey",          colors.foreground,           colors.grey_2,      styles.none)
Group.new("SpellBad",            groups.String,               colors.none,          styles.underline)
Group.new("SpellCap",            colors.voodoo_fire,          colors.grey_0,      styles.none)
Group.new("SpellLocal",          colors.grey_4,             colors.grey_0,      styles.none)
Group.new("SpellRare",           colors.grey_4,             colors.grey_0,      styles.none)
Group.new("Visual",              colors.grey_0,             colors.voodoo_yellow, styles.none)
Group.new("VisualNOS",           colors.background,           colors.foreground,    styles.none)
Group.new("Whitespace",          colors.grey_2,             colors.background,    styles.none)
Group.new("Folded",              colors.grey_0,             colors.grey_3,    styles.none)
-- Git gutters and diffs
Group.new('DiffAdd',             colors.voodoo_green,         colors.grey_0,      styles.none)
Group.new('DiffChange',          colors.voodoo_yellow,        colors.grey_0,      styles.none)
Group.new('DiffDelete',          colors.voodoo_fire,          colors.grey_0,      styles.none)
Group.new('DiffText',            colors.foreground,           colors.grey_0,      styles.none)
-- COC
Group.new('CocErrorHighlight',   colors.none,                 colors.grey_1,      styles.underline)
-- FZF
Group.new('fzf1',                colors.grey_4,             colors.background,    styles.none)
Group.new('fzf2',                colors.grey_4,             colors.grey_0,      styles.none)
Group.new('fzf3',                colors.grey_4,             colors.grey_0,      styles.none)
-- "+- Neovim Support -+
Group.new("healthError",         colors.voodoo_orange,        colors.voodoo_fire,   styles.none)
Group.new("healthSuccess",       colors.voodoo_orange,        colors.voodoo_fire,   styles.none)
Group.new("healthWarning",       colors.voodoo_fire,          colors.voodoo_fire,   styles.none)
Group.new("TermCursorNC",        colors.grey_0,             colors.voodoo_fire,   styles.none)
Group.new("IncSearch",           colors.grey_4,             colors.voodoo_fire,   styles.underline)
Group.new("Search",              colors.grey_0,             colors.voodoo_fire,   styles.none)
-- vim language highlighting
Group.new('vimcommand',          groups.Statement,            colors.none)
Group.new('vimLet',              groups.vimcommand,           colors.none)
Group.new('vimFuncVar',          groups.identifier,           colors.none)
Group.new('vimCommentTitle',     groups.PreProc,              colors.none)
Group.new('vimIsCommand',        colors.none,                 colors.none)
Group.new('vimFuncSID',          groups.Special,              colors.none)
Group.new('vimMapModKey',        groups.vimFuncSID,           colors.none)
Group.new('vimMapLhs',           colors.none,                 colors.none)
Group.new('vimNotation',         colors.voodoo_orange,        colors.none)
Group.new('vimBracket',          groups.Delimiter,            colors.none)
Group.new('vimMap',              groups.vimcommand,           colors.none)
Group.new('nvimMap',             groups.vimMap,               colors.none)
-- Markdown
Group.new("markdownError",       colors.voodoo_red,           colors.none)
-- lua language
Group.new('luaFunctionCall'      ,                            groups.Function       ,           groups.Function , groups.Function)
-- Python
Group.new('pythonoperator'       ,                            groups.Operator       ,           groups.Operator , styles.none)

--hi! link pythonBuiltin GruvboxOrange
--hi! link pythonBuiltinObj GruvboxOrange
--hi! link pythonBuiltinFunc GruvboxOrange
--hi! link pythonFunction GruvboxAqua
--hi! link pythonDecorator GruvboxRed
--hi! link pythonInclude GruvboxBlue
--hi! link pythonImport GruvboxBlue
--hi! link pythonRun GruvboxBlue
--hi! link pythonCoding GruvboxBlue
--hi! link pythonOperator GruvboxRed
--hi! link pythonException GruvboxRed
--hi! link pythonExceptions GruvboxPurple
--hi! link pythonBoolean GruvboxPurple
--hi! link pythonDot GruvboxFg3
--hi! link pythonConditional GruvboxRed
--hi! link pythonRepeat GruvboxRed
--hi! link pythonDottedName GruvboxGreenBold

-- Terminal
vim.api.nvim_set_var('terminal_color_0',  voodoo_green)
vim.api.nvim_set_var('terminal_color_1',  voodoo_red)
vim.api.nvim_set_var('terminal_color_2',  voodoo_green)
vim.api.nvim_set_var('terminal_color_3',  voodoo_red)
vim.api.nvim_set_var('terminal_color_4',  voodoo_yellow)
vim.api.nvim_set_var('terminal_color_5',  voodoo_blue)
vim.api.nvim_set_var('terminal_color_6',  voodoo_cyan)
vim.api.nvim_set_var('terminal_color_7',  foreground)
vim.api.nvim_set_var('terminal_color_8',  voodoo_green)
vim.api.nvim_set_var('terminal_color_9',  voodoo_red)
vim.api.nvim_set_var('terminal_color_10', voodoo_green)
vim.api.nvim_set_var('terminal_color_11', voodoo_yellow)
vim.api.nvim_set_var('terminal_color_12', voodoo_blue)
vim.api.nvim_set_var('terminal_color_13', voodoo_red)
vim.api.nvim_set_var('terminal_color_14', voodoo_cyan)
vim.api.nvim_set_var('terminal_color_15', foreground)
