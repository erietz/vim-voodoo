local Color, colors, Group, groups, styles = require("colorbuddy").setup()

Color.new('background',      "#161712")
--Color.new('background',      "#520000")
Color.new('foreground',      "#B4B7A4")
Color.new('mando_0',         "#21221B")
Color.new('mando_1',         "#2C2E24")
Color.new('mando_2',         "#37392D")
Color.new('mando_3',         "#424536")
Color.new('mando_3_light',   "#4d503f")
Color.new('mando_4',         "#585b48")
Color.new('mando_5',         "#646751")
Color.new('mando_6',         "#6f725a")
Color.new('mando_grey',      "#544F4C")
Color.new('mando_yellow',    "#F3EB92")
Color.new('mando_pink',      "#C38595")
Color.new('mando_tan',       "#DFA377")

Color.new('mando_red',       "#7C1C2A")
Color.new('mando_blue',      "#659DB7")

Color.new("RedSalsa",       "#f94144")

--Color.new("LightPink",     "#ffadad")
--Color.new("DeepChamp",     "#ffd6a5")
--Color.new("LemonYellow",   "#fdffb6")
--Color.new("TeaGreen",      "#caffbf")
--Color.new("Celeste",       "#9bf6ff")
--Color.new("BabyBlue",      "#a0c4ff")
--Color.new("MaximumBlue",   "#bdb2ff")
--Color.new("Mauve",         "#ffc6ff")
--Color.new("BabyPowder",    "#fffffc")

Color.new("LightPink",     "#797d62")
Color.new("DeepChamp",     "#9b9b7a")
Color.new("LemonYellow",   "#d9ae94")
Color.new("TeaGreen",      "#f1dca7")
Color.new("Celeste",       "#ffcb69")
Color.new("BabyBlue",      "#D08C60")
Color.new("MaximumBlue",   "#997b66")
--Color.new("Mauve",         "#ffc6ff")
Color.new("Mauve",         "#C38595")
Color.new("BabyPowder",    "#fffffc")

-- #52372E,#86C3E2,#544F4C,#7C1C2A,#D8D3BD,#C48A43,#B79492,#659DB7,#533733
-- "#812C14","#C38595","#B0B8B6","#6A4756","#9D8070","#F2D7CD","#F3EB92","#DFA377","#5C2A23"
-- "#f94144","#f3722c","#f8961e","#f9844a","#f9c74f","#90be6d","#43aa8b","#4d908e","#577590","#277da1"
-- "#ffadad","#ffd6a5","#fdffb6","#caffbf","#9bf6ff","#a0c4ff","#bdb2ff","#ffc6ff","#fffffc"

Group.new('Normal',               colors.foreground,    colors.mando_0)

Group.new('Comment',              colors.mando_4,       colors.none,    styles.NONE)

Group.new("Constant",             colors.Celeste,       colors.none,    styles.NONE)
Group.new("String",               colors.LemonYellow,   colors.none,    styles.NONE)
Group.new('Character',            colors.Celeste,       colors.none,    styles.NONE)
Group.new("Number",               colors.Celeste,       colors.none,    styles.NONE)
Group.new('Boolean',              colors.Celeste,       colors.none,    styles.NONE)
Group.new("Float",                colors.Celeste,       colors.none,    styles.NONE)

Group.new("Identifier",           colors.Mauve,         colors.none,    styles.NONE)
Group.new('Function',             colors.BabyBlue,      colors.none,    styles.bold)

Group.new("Statement",            colors.LemonYellow,   colors.none,    styles.NONE)
Group.new("Conditional",          colors.LemonYellow,   colors.none,    styles.NONE)
Group.new("Repeat",               colors.LemonYellow,   colors.none,    styles.NONE)
Group.new("Label",                colors.LemonYellow,   colors.none,    styles.italic)
Group.new("Operator",             colors.Mauve,         colors.none,    styles.NONE)
Group.new("Keyword",              colors.LemonYellow,   colors.none,    styles.italic)
Group.new("Exception",            colors.LemonYellow,   colors.none,    styles.NONE)

Group.new("PreProc",              colors.TeaGreen,      colors.none,    styles.NONE)
Group.new("Include",              colors.TeaGreen,      colors.none,    styles.NONE)
Group.new("Define",               colors.TeaGreen,      colors.none,    styles.NONE)
Group.new("Macro",                colors.TeaGreen,      colors.none,    styles.NONE)
Group.new("PreCondit",            colors.TeaGreen,      colors.none,    styles.NONE)

Group.new("Type",                 colors.MaximumBlue,   colors.none,    styles.italic)
Group.new("StorageClass",         colors.DeepChamp,     colors.none,    styles.NONE)
Group.new("Structure",            colors.DeepChamp,     colors.none,    styles.NONE)
Group.new("Typedef",              colors.DeepChamp,     colors.none,    styles.NONE)

Group.new("Special",              colors.MaximumBlue,   colors.none,    styles.NONE)
Group.new("SpecialChar",          colors.MaximumBlue,   colors.none,    styles.NONE)
Group.new("Tag",                  colors.MaximumBlue,   colors.none,    styles.NONE)
Group.new("Delimiter",            colors.MaximumBlue,   colors.none,    styles.NONE)
Group.new("SpecialComment",       colors.MaximumBlue,   colors.none,    styles.NONE)
Group.new("Debug",                colors.MaximumBlue,   colors.none,    styles.NONE)

Group.new('Underlined',           colors.Mauve,         colors.none,    styles.bold)
Group.new('Ignore',               colors.Mauve,         colors.none,    styles.bold)
Group.new('Error',                colors.RedSalsa,      colors.none,    styles.bold)
Group.new("Todo",                 colors.mando_red,     colors.none,    styles.NONE)

Group.new('TabLineSel',           colors.foreground,    colors.mando_yellow, styles.bold )
Group.new('TabLineSelSeparator',  colors.mando_yellow,  colors.none)
Group.new('TabLine',              colors.mando_4,       colors.mando_2)
Group.new('TabLineSeparator',     colors.mando_2,       colors.none)
Group.new('StatusLine',           colors.mando_6,       colors.mando_1)
Group.new('StatusLineNC',         colors.mando_2,       colors.mando_0)
Group.new('Conceal',              colors.mando_3_light, colors.none)
Group.new('VertSplit',            colors.mando_3,       colors.none)

Group.new('ErrorMsg',             colors.mando_5,       colors.Mauve, styles.bold)
Group.new('WarningMsg',           colors.mando_5,       colors.mando_tan, styles.bold)
Group.new("Title",                colors.mando_4,       colors.none)
Group.new("CursorColumn",         colors.mando_1,       colors.none,    styles.NONE)
Group.new("LineNr",               colors.mando_1,       colors.none,    styles.NONE)
Group.new("CursorLineNr",         colors.mando_5,       colors.none,    styles.NONE)
Group.new("Line",                 colors.mando_tan,     colors.none,    styles.bold)
Group.new("SignColumn",           colors.none,          colors.none,    styles.NONE)
Group.new("ColorColumn",          colors.none,          colors.mando_1)
Group.new("Cursor",               colors.mando_1,       colors.mando_4)
Group.new("CursorLine",           colors.none,       colors.background)
Group.new("iCursor",              colors.mando_1,       colors.mando_4)
Group.new("EndOfBuffer",          colors.none,          colors.none)
Group.new("MatchParen",           colors.mando_1,       colors.mando_3)
Group.new("NonText",              colors.none,          colors.none)
Group.new("PMenu",                colors.mando_tan,     colors.mando_0)
Group.new("PmenuSbar",            colors.mando_4,       colors.mando_2)
Group.new("PMenuSel",             colors.mando_6,       colors.mando_yellow)
Group.new("PmenuThumb",           colors.mando_1,       colors.mando_3)
Group.new("SpecialKey",           colors.mando_3,       colors.mando_3)
Group.new("SpellBad",             colors.Mauve,         colors.mando_1)
Group.new("SpellCap",             colors.mando_red,     colors.mando_1)
Group.new("SpellLocal",           colors.mando_5,       colors.mando_1)
Group.new("SpellRare",            colors.mando_6,       colors.mando_1)
Group.new("Visual",               colors.mando_4,       colors.mando_yellow)
Group.new("VisualNOS",            colors.mando_2,       colors.mando_1)

-- "+- Neovim Support -+
Group.new("healthError",          colors.Mauve,         colors.mando_1)
Group.new("healthSuccess",        colors.mando_pink,    colors.mando_1)
Group.new("healthWarning",        colors.mando_red,     colors.mando_1)
Group.new("TermCursorNC",         colors.mando_1,       colors.mando_1)
Group.new("IncSearch",            colors.mando_6,       colors.mando_red, styles.underline)
Group.new("Search",               colors.mando_1,       colors.mando_1)

-- vim
Group.new('vimcommand',           groups.Statement,     colors.none)
Group.new('vimLet',               groups.vimcommand ,   colors.none)
Group.new('vimFuncVar',           groups.identifier,    colors.none)
Group.new('vimCommentTitle',      groups.PreProc,       colors.none)
Group.new('vimIsCommand',         colors.none,          colors.none)
Group.new('vimFuncSID',           groups.Special,       colors.none)
Group.new('vimMapModKey',         groups.vimFuncSID,    colors.none)
Group.new('vimMapLhs',            colors.none,          colors.none)
Group.new('vimNotation',          colors.Mauve,         colors.none)
Group.new('vimBracket',           groups.Delimiter,     colors.none)
Group.new('vimMap',               groups.vimcommand,    colors.none)
Group.new('nvimMap',              groups.vimMap,        colors.none)

--[[
-- startify
Group.new("StartifyFile",colors.mando_6, colors.none)
Group.new("StartifyFooter",colors.none, colors.none)
Group.new("StartifyHeader",colors.mando_grey, colors.none)
Group.new("StartifyNumber",colors.mando_mauve, colors.none)
Group.new("StartifyPath",colors.mando_grey, colors.none)
Group.new("StartifyBracket", groups.Delimiter, groups.Delimiter)
Group.new("StartifySlash", groups.Normal, groups.Normal)
Group.new("StartifySpecial", groups.Comment, groups.Comment)

-- gitgutter
Group.new("GitGutterAdd",          colors.mando_pink, colors.none)
Group.new("GitGutterDelete",       colors.mando_blue, colors.none)
Group.new("GitGutterChange",       colors.mando_purple, colors.none)
Group.new("GitGutterChangeDelete", colors.mando_blue, colors.none)

-- built-in LSP
Group.new("LSPDiagnosticsDefaultWarning", colors.mando_purple, colors.none)
Group.new("LSPDiagnosticsDefaultError", colors.mando_blue, colors.none)
Group.new("LSPDiagnosticsDefaultInformation", colors.mando_grey, colors.none)
Group.new("LSPDiagnosticsDefaultHint", colors.mando_red, colors.none)

-- TS
Group.new("TSDefinition", groups.Type, groups.Type, styles.italic)
Group.new("TSString", groups.String, groups.String, styles.italic)
Group.new("TSDefinitionUsage", groups.CursorLine, groups.CursorLine)

-- TeleScope
Group.new("TelescopeSelection", colors.mando_blue, colors.mando_grey, styles.bold)
Group.new("TelescopeNormal", groups.Pmenu, groups.Pmenu)

-- Markdown
Group.new("markdownError", colors.mando_4, colors.none)
--]]
