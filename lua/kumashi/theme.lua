local lush = require('lush')
local colors = require('kumashi.colors')

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    ColorColumn    { bg = colors.bgSecondary },
    Conceal        { fg = colors.fgFaint },
    Cursor         { bg = colors.fgMain, fg = colors.bgPrimary },
    CurSearch      { bg = colors.fruit, fg = colors.bgPrimary },
    lCursor        { Cursor },
    CursorIM       { Cursor },
    CursorColumn   { bg = colors.fgFaint, fg = colors.bgPrimary },
    CursorLine     { bg = colors.bgTertiary },
    Directory      { fg = colors.surprise },
    DiffAdd        { bg = colors.marimo, fg = colors.bgPrimary },
    DiffChange     { bg = colors.wonder, fg = colors.bgPrimary },
    DiffDelete     { fg = colors.blood },
    DiffText       { fg = colors.garden },
    EndOfBuffer    { Conceal },
    TermCursor     { bg = colors.fgMuted, fg = colors.bgPrimary },
    TermCursorNC   { CursorColumn },
    ErrorMsg       { fg = colors.blood, bg = colors.bgSecondary },
    VertSplit      { fg = colors.bgDark},
    Folded         { bg = colors.surprise, fg = colors.bgBright },
    FoldColumn     { bg = colors.bgTertiary },
    SignColumn     { FoldColumn },
    IncSearch      { CurSearch },
    Substitute     { bg = colors.sangria, fg = colors.bgPrimary },
    LineNr         { bg = colors.bgDark, fg = colors.fgMain },
    LineNrAbove    { bg = colors.bgTertiary, fg = colors.fgMain },
    LineNrBelow    { LineNrAbove },
    CursorLineNr   { ColorColumn, fg = colors.fgDark, gui = "bold" },
    CursorLineFold { FoldColumn },
    CursorLineSign { SignColumn },
    MatchParen     { bg = colors.bgDark, fg = colors.fgMain },
    ModeMsg        { fg = colors.fgDark },
    MsgArea        { fg = colors.fgMain, bg = colors.bgPrimary },
    MsgSeparator   { bg = colors.bgDark, fg = colors.fgMain },
    MoreMsg        { fg = colors.surprise, bg = colors.bgSecondary },
    NonText        { fg = colors.fgDark },
    Normal         { bg = colors.bgPrimary, fg = colors.fgMain },
    NormalFloat    { bg = colors.bgSecondary, fg = colors.fgMain },
    FloatBorder    { fg = colors.fgMuted, bg = bg.bgSecondary },
    FloatTitle     { fg = colors.fgMuted },
    NormalNC       { fg = colors.fgMuted },
    Pmenu          { bg = colors.bgDark, fg = colors.fgDark },
    PmenuSel       { Cursor },
    PmenuKind      { Pmenu },
    PmenuKindSel   { PmenuSel },
    PmenuExtra     { Pmenu },
    PmenuExtraSel  { PmenuSel },
    PmenuSbar      { Pmenu },
    PmenuThumb     { PmenuSel},
    Question       { fg = colors.surprise, gui = "bold" },
    QuickFixLine   { Substitute },
    Search         { Substitute },
    SpecialKey     { fg = colors.surprise },
    SpellBad       { fg = colors.blood, gui = "underline" },
    SpellCap       { fg = colors.sangria, gui = "underline"},
    SpellLocal     { fg = colors.kuma, gui = "underline" },
    SpellRare      { fg = colors.marimo, gui = "underline" },
    StatusLine     { bg = colors.bgTertiary, fg = colors.fgMain },
    StatusLineNC   { bg = colors.bgPrimary, fg = colors.fgMain },
    TabLine        { bg = colors.bgSecondary },
    TabLineFill    { bg = colors.bgTertiary },
    TabLineSel     { bg = colors.zombie },
    Title          { fg = colors.jam},
    Visual         { bg = colors.bgDark, fg = colors.fgMain},
    VisualNOS      { bg = colors.bgTertiary, fg = colors.fgMuted },
    WarningMsg     { fg = colors.sangria, bg = colors.bgSecondary },
    Whitespace     { Conceal },
    Winseparator   { VertSplit },
    WildMenu       { Cursor, gui = "bold"},
    WinBar         { bg = colors.bgDark, gui = "bold" },
    WinBarNC       { bg = colors.bgDark },

    Comment        { fg = colors.fgMuted }, -- Any comment

    Constant       { fg = colors.wonder }, -- (*) Any constant
    String         { fg = colors.garden }, --   A string constant: "this is a string"
    -- Character      { Constant }, --   A character constant: 'c', '\n'
    -- Number         { Constant }, --   A number constant: 234, 0xff
    -- Boolean        { Constant }, --   A boolean constant: TRUE, false
    -- Float          { Constant }, --   A floating point constant: 2.3e10

    Identifier     { fg = colors.kuma}, -- (*) Any variable name
    Function       { fg = colors.sea }, --   Function name (also: methods for classes)

    Statement      { fg = colors.berry }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    Operator       { fg = colors.zombie }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    PreProc        { fg = colors.marimo }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = colors.sangria }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        { fg = colors.surprise }, -- (*) Any special symbol
    -- SpecialChar    { fg = colors.zombie }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    Delimiter      { fg = colors.fruit }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    Ignore         { Conceal}, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { bg = colors.blood, fg = colors.bgPrimary }, -- Any erroneous construct
    Todo           { fg = colors.ruby, bg = colors.bgSecondary }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    LspReferenceText            { fg = colors.surprise, gui = "bold", underline = true } , -- Used for highlighting "text" references
    LspReferenceRead            { fg = colors.sea, gui = "bold", underline = true } , -- Used for highlighting "read" references
    LspReferenceWrite           { LspReferenceRead } , -- Used for highlighting "write" references
    LspCodeLens                 { Comment } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    LspCodeLensSeparator        { LspCodeLens } , -- Used to color the seperator between two or more code lens.
    LspSignatureActiveParameter { gui = "bold_italic", underline = true } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = colors.blood } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = colors.sangria} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = colors.surprise} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = colors.kuma } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = colors.marimo} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError   { DiagnosticError, gui = "underline" } , -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { DiagnosticWarn, gui = "underline" } , -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { DiagnosticInfo, gui = "underline" } , -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { DiagnosticHint, gui = "underline" } , -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk      { DiagnosticOk, gui = "underline" } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    sym"@variable"          { fg = colors.berry }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag

		-- lewis6991/gitsigns.nvim
		GitSignsAdd									{ fg = colors.marimo },
		GitSignsChange							{ fg = colors.wonder },
		GitSignsDelete							{ fg = colors.ruby },

		-- nvim-mini/mini.nvim
		MiniDiffSignAdd							{ fg = colors.santoryu, gui = "italic" },
		MiniDiffSignChange					{ fg = colors.garden, gui = "italic" },
		MiniDiffSignDelete					{ fg = colors.ruby, gui = "italic" },
		MiniStatuslineModeNormal		{ bg = colors.berry, fg = colors.bgPrimary },
		MiniStatuslineModeInsert		{ bg = colors.surprise, fg = colors.bgPrimary },
		MiniStatuslineModeVisual		{ bg = colors.wonder, fg = colors.bgPrimary },
		MiniStatuslineModeReplace		{ bg = colors.blood, fg = colors.bgPrimary },
		MiniStatuslineModeCommand		{ bg = colors.kuma, fg = colors.bgPrimary },
		MiniStatuslineModeOther			{ bg = colors.marimo, fg = colors.bgPrimary },
		MiniStatuslineDevinfo				{ StatusLine },
		MiniStatuslineFilename			{ StatusLineNC },
		MiniStatuslineFileinfo			{ StatusLine },
		MiniStatuslineInactive			{ fg = colors.fgMuted },
		MiniTablineCurrent					{ TabLineSel },
		MiniTablineVisible					{ fg = colors.surprise, bg = colors.fgMuted },
		MiniTablineHidden						{ TabLine },
		MiniTablineModifiedCurrent	{ MiniTablineCurrent, gui = "bold_italic" },
		MiniTablineModifiedVisible	{ MiniTablineVisible, gui = "bold" },
		MiniTablineModifiedHidden		{ MiniTablineHidden, gui = "bold" },
		MiniTablineFill							{ TabLineFill },

		-- MeanderingProgrammer/render-markdown.nvim
		RenderMarkdownH1Bg			{ bg = colors.bgTertiary, fg = colors.fgMain, gui = "bold" },
		RenderMarkdownH2Bg			{ bg = colors.bgTertiary, fg = colors.kuma, gui = "bold" },
		RenderMarkdownH3Bg			{ bg = colors.bgTertiary, fg = colors.sangria, gui = "bold" },
		RenderMarkdownH4Bg			{ bg = colors.bgTertiary, fg = colors.blood, gui = "bold" },
		RenderMarkdownH5Bg			{ bg = colors.bgTertiary, fg = colors.surprise, gui = "bold" },
		RenderMarkdownH6Bg			{ bg = colors.bgTertiary, fg = colors.wonder, gui = "bold" },

		-- folke/trouble.nvim
		TroubleIndent						{ bg = colors.bgSecondary, fg = colors.jam },
		TroublePos							{ bg = colors.bgTertiary, fg = colors.jam }

}
end)

return theme
