local Color, colors, Group, groups, styles = require("colorbuddy").setup()

if vim.g.voodoo_contrast == 'soft' then
    background = '#4e4e4e'
elseif vim.g.voodoo_contrast == 'hard' then
    background = '#000000'
else
    background = '#333333'
end

local grey_0     = '#2b2b2b'
local grey_1     = '#5c5c5c'
local grey_2     = '#828282'
local grey_3     = '#adadad'
local grey_4     = '#d1d1d1'
local grey_5     = '#ededed'
local foreground = '#E6E1CF' --grey_5

local theme_0    = "#1b9e77"
local theme_1    = "#d95f02"
local theme_2    = "#7570b3"
local theme_3    = "#e7298a"
local theme_4    = "#66a61e"
local theme_5    = "#e6ab02"
local theme_6    = "#a6761d"
local theme_fire = "#CF222B"

if vim.g.voodoo_variant == 'light' then
    Color.new('background',    foreground)
    Color.new('foreground',    background)
    Color.new('grey_0',        grey_4)
    Color.new('grey_1',        grey_3)
    Color.new('grey_2',        grey_2)
    Color.new('grey_3',        grey_1)
    Color.new('grey_4',        grey_0)
    Color.new('theme_0',       theme_0)
    Color.new('theme_1',       theme_1)
    Color.new('theme_2',       theme_2)
    Color.new('theme_3',       theme_3)
    Color.new('theme_4',       theme_4)
    Color.new('theme_5',       theme_5)
    Color.new('theme_6',       theme_6)
    Color.new('theme_fire',    theme_fire)
else
    Color.new('background',    background)
    Color.new('foreground',    foreground)
    Color.new('grey_0',        grey_0)
    Color.new('grey_1',        grey_1)
    Color.new('grey_2',        grey_2)
    Color.new('grey_3',        grey_3)
    Color.new('grey_4',        grey_4)
    Color.new('theme_0',       theme_0)
    Color.new('theme_1',       theme_1)
    Color.new('theme_2',       theme_2)
    Color.new('theme_3',       theme_3)
    Color.new('theme_4',       theme_4)
    Color.new('theme_5',       theme_5)
    Color.new('theme_6',       theme_6)
    Color.new('theme_fire',    theme_fire)
end

-- Color assignments
Group.new('Normal',                     colors.foreground, colors.background,     styles.NONE)
--
Group.new('Comment',                    colors.grey_2,     colors.none,           styles.NONE)
--
Group.new("Constant",                   colors.theme_4,    colors.none,           styles.NONE)
Group.new("String",                     colors.theme_3,    colors.none,           styles.NONE)
Group.new('Character',                  colors.theme_4,    colors.none,           styles.NONE)
Group.new("Number",                     colors.theme_4,    colors.none,           styles.NONE)
Group.new('Boolean',                    colors.theme_4,    colors.none,           styles.NONE)
Group.new("Float",                      colors.theme_4,    colors.none,           styles.NONE)
--
Group.new("Identifier",                 colors.theme_6,    colors.none,           styles.NONE)
Group.new('Function',                   colors.theme_3,    colors.none,           styles.bold)
--
Group.new("Statement",                  colors.theme_5,    colors.none,           styles.NONE)
Group.new("Conditional",                colors.theme_5,    colors.none,           styles.NONE)
Group.new("Repeat",                     colors.theme_5,    colors.none,           styles.NONE)
Group.new("Label",                      colors.theme_5,    colors.none,           styles.italic)
Group.new("Operator",                   colors.theme_6,    colors.none,           styles.NONE)
Group.new("Keyword",                    colors.theme_5,    colors.none,           styles.italic)
Group.new("Exception",                  colors.theme_5,    colors.none,           styles.NONE)
--
Group.new("PreProc",                    colors.theme_0,    colors.none,           styles.NONE)
Group.new("Include",                    colors.theme_0,    colors.none,           styles.NONE)
Group.new("Define",                     colors.theme_0,    colors.none,           styles.NONE)
Group.new("Macro",                      colors.theme_0,    colors.none,           styles.NONE)
Group.new("PreCondit",                  colors.theme_0,    colors.none,           styles.NONE)
--
Group.new("Type",                       colors.theme_2,    colors.none,           styles.italic)
Group.new("StorageClass",               colors.theme_1,    colors.none,           styles.NONE)
Group.new("Structure",                  colors.theme_0,    colors.none,           styles.NONE)
Group.new("Typedef",                    colors.theme_2,    colors.none,           styles.NONE)
--
Group.new("Special",                    colors.theme_1,    colors.none,           styles.NONE)
Group.new("SpecialChar",                colors.theme_1,    colors.none,           styles.NONE)
Group.new("Tag",                        colors.theme_1,    colors.none,           styles.NONE)
Group.new("Delimiter",                  colors.theme_1,    colors.none,           styles.NONE)
Group.new("SpecialComment",             colors.theme_1,    colors.none,           styles.NONE)
Group.new("Debug",                      colors.theme_1,    colors.none,           styles.NONE)
--
Group.new('Underlined',                 colors.theme_6,    colors.none,           styles.bold)
Group.new('Ignore',                     colors.theme_1,    colors.none,           styles.bold)
Group.new('Error',                      colors.theme_fire, colors.none,           styles.bold)
Group.new("Todo",                       colors.theme_6,    colors.none,           styles.NONE)
--
Group.new('TabLineSel',                 colors.grey_4,     colors.grey_0,         styles.bold )
Group.new('TabLineSelSeparator',        colors.theme_5,    colors.none,           styles.none)
Group.new('TabLine',                    colors.grey_3,     colors.grey_1,         styles.none)
Group.new('TabLineSeparator',           colors.grey_1,     colors.none,           styles.none)
Group.new('TablineFill',                colors.theme_3,    colors.grey_0,         styles.none)
Group.new('StatusLine',                 colors.grey_2,     colors.grey_0,         styles.bold)
Group.new('StatusLineNC',               colors.grey_1,     colors.background,     styles.none)
Group.new('Conceal',                    colors.grey_2,     colors.none,           styles.none)
Group.new('VertSplit',                  colors.grey_2,     colors.none,           styles.none)
--
Group.new('ErrorMsg',                   colors.grey_0,     colors.theme_fire,     styles.bold)
Group.new('WarningMsg',                 colors.grey_4,     colors.foreground,     styles.bold)
Group.new("Title",                      colors.grey_3,     colors.none,           styles.none)
Group.new("CursorColumn",               colors.grey_0,     colors.none,           styles.NONE)
Group.new("LineNr",                     colors.grey_2,     colors.none,           styles.NONE)
Group.new("CursorLineNr",               colors.grey_3,     colors.none,           styles.NONE)
Group.new("Line",                       colors.foreground, colors.none,           styles.bold)
Group.new("SignColumn",                 colors.none,       colors.none,           styles.NONE)
Group.new("ColorColumn",                colors.none,       colors.grey_0,         styles.none)
Group.new("Cursor",                     colors.grey_0,     colors.grey_3,         styles.none)
Group.new("CursorLine",                 colors.none,       colors.background,     styles.none)
Group.new("iCursor",                    colors.grey_0,     colors.grey_3,         styles.none)
Group.new("EndOfBuffer",                colors.none,       colors.none,           styles.none)
Group.new("MatchParen",                 colors.none,       colors.grey_2,         styles.none)
Group.new("NonText",                    colors.none,       colors.none,           styles.none)
Group.new("PMenu",                      colors.foreground, colors.grey_0,         styles.none)
Group.new("PmenuSbar",                  colors.grey_3,     colors.grey_0,         styles.none)
Group.new("PMenuSel",                   colors.theme_3,    colors.background,     styles.none)
Group.new("PmenuThumb",                 colors.grey_0,     colors.grey_2,         styles.none)
Group.new("NormalFloat",                colors.foreground, colors.grey_0,         styles.none)
Group.new("SpecialKey",                 colors.foreground, colors.grey_2,         styles.none)
Group.new("SpellBad",                   groups.String,     colors.none,           styles.underline)
Group.new("SpellCap",                   colors.theme_fire, colors.grey_0,         styles.none)
Group.new("SpellLocal",                 colors.grey_4,     colors.grey_0,         styles.none)
Group.new("SpellRare",                  colors.grey_4,     colors.grey_0,         styles.none)
Group.new("Visual",                     colors.grey_0,     colors.theme_5,        styles.none)
Group.new("VisualNOS",                  colors.background, colors.foreground,     styles.none)
Group.new("Whitespace",                 colors.grey_2,     colors.background,     styles.none)
Group.new("Folded",                     colors.grey_0,     colors.grey_3,         styles.none)
-- Git gutters and diffs
Group.new('DiffAdd',                    colors.theme_2,    colors.grey_0,         styles.none)
Group.new('DiffChange',                 colors.theme_5,    colors.grey_0,         styles.none)
Group.new('DiffDelete',                 colors.theme_fire, colors.grey_0,         styles.none)
Group.new('DiffText',                   colors.foreground, colors.grey_0,         styles.none)
-- COC
Group.new('CocErrorHighlight',          colors.none,       colors.grey_1,         styles.underline)
-- FZF
Group.new('fzf1',                       colors.grey_4,     colors.background,     styles.none)
Group.new('fzf2',                       colors.grey_4,     colors.grey_0,         styles.none)
Group.new('fzf3',                       colors.grey_4,     colors.grey_0,         styles.none)
-- "+- Neovim Support -+
Group.new("healthError",                colors.theme_1,    colors.theme_fire,     styles.none)
Group.new("healthSuccess",              colors.theme_1,    colors.theme_fire,     styles.none)
Group.new("healthWarning",              colors.theme_fire, colors.theme_fire,     styles.none)
Group.new("TermCursorNC",               colors.grey_0,     colors.theme_fire,     styles.none)
Group.new("IncSearch",                  colors.grey_4,     colors.theme_fire,     styles.underline)
Group.new("Search",                     colors.grey_0,     colors.theme_fire,     styles.none)
-- vim language highlighting
Group.new('vimcommand',                 groups.Statement,  colors.none)
Group.new('vimLet',                     groups.vimcommand, colors.none)
Group.new('vimFuncVar',                 groups.identifier, colors.none)
Group.new('vimCommentTitle',            groups.PreProc,    colors.none)
Group.new('vimIsCommand',               colors.none,       colors.none)
Group.new('vimFuncSID',                 groups.Special,    colors.none)
Group.new('vimMapModKey',               groups.vimFuncSID, colors.none)
Group.new('vimMapLhs',                  colors.none,       colors.none)
Group.new('vimNotation',                colors.theme_1,    colors.none)
Group.new('vimBracket',                 groups.Delimiter,  colors.none)
Group.new('vimMap',                     groups.vimcommand, colors.none)
Group.new('nvimMap',                    groups.vimMap,     colors.none)
-- markdown
Group.new("markdownH1",                 colors.theme_1,    colors.none,           styles.bold)
Group.new("markdownH2",                 colors.theme_2,    colors.none,           styles.bold)
Group.new("markdownH3",                 colors.theme_3,    colors.none,           styles.bold)
Group.new("markdownH4",                 colors.theme_4,    colors.none,           styles.bold)
Group.new("markdownH5",                 colors.theme_5,    colors.none,           styles.bold)
Group.new("markdownH6",                 colors.theme_6,    colors.none,           styles.bold)
Group.new("markdownRule",               groups.markdownH2, colors.none,           styles.bold)
Group.new("markdownItalic",             colors.theme_0,    colors.none,           styles.italic)
Group.new("markdownBold",               colors.theme_0,    colors.none,           styles.bold)
Group.new("markdownBoldItalic",         colors.theme_0,    colors.none,           styles.bold + styles.italic)
Group.new("markdownCodeDelimiter",      colors.theme_0,    colors.none,           styles.bold)
Group.new("markdownCode",               colors.theme_0,    colors.none,           styles.none)
Group.new("markdownCodeBlock",          colors.theme_0,    colors.none,           styles.none)
Group.new("markdownFootnoteDefinition", colors.theme_0,    colors.none,           styles.italic)
Group.new("markdownListMarker",         colors.theme_0,    colors.none,           styles.bold)
Group.new("markdownLineBreak",          colors.theme_0,    colors.none,           styles.underline)
-- lua language
Group.new('luaFunctionCall',            groups.Function,   groups.Function,       groups.Function)
-- Python
Group.new('pythonoperator',             groups.Operator,   groups.Operator,       styles.none)

--hi! link pythonBuiltin Gruvbox1
--hi! link pythonBuiltinObj Gruvbox1
--hi! link pythonBuiltinFunc Gruvbox1
--hi! link pythonFunction GruvboxAqua
--hi! link pythonDecorator Gruvbox3
--hi! link pythonInclude Gruvbox0
--hi! link pythonImport Gruvbox0
--hi! link pythonRun Gruvbox0
--hi! link pythonCoding Gruvbox0
--hi! link pythonOperator Gruvbox3
--hi! link pythonException Gruvbox3
--hi! link pythonExceptions GruvboxPurple
--hi! link pythonBoolean GruvboxPurple
--hi! link pythonDot GruvboxFg3
--hi! link pythonConditional Gruvbox3
--hi! link pythonRepeat Gruvbox3
--hi! link pythonDottedName Gruvbox2Bold

-- Terminal
vim.api.nvim_set_var('terminal_color_0',  theme_2)
vim.api.nvim_set_var('terminal_color_1',  theme_3)
vim.api.nvim_set_var('terminal_color_2',  theme_2)
vim.api.nvim_set_var('terminal_color_3',  theme_3)
vim.api.nvim_set_var('terminal_color_4',  theme_5)
vim.api.nvim_set_var('terminal_color_5',  theme_0)
vim.api.nvim_set_var('terminal_color_6',  theme_6)
vim.api.nvim_set_var('terminal_color_7',  foreground)
vim.api.nvim_set_var('terminal_color_8',  theme_2)
vim.api.nvim_set_var('terminal_color_9',  theme_3)
vim.api.nvim_set_var('terminal_color_10', theme_2)
vim.api.nvim_set_var('terminal_color_11', theme_5)
vim.api.nvim_set_var('terminal_color_12', theme_0)
vim.api.nvim_set_var('terminal_color_13', theme_3)
vim.api.nvim_set_var('terminal_color_14', theme_6)
vim.api.nvim_set_var('terminal_color_15', foreground)
