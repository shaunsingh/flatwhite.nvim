local flatwhite = require("moonlight.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = flatwhite.purple }, -- int, long, char, etc.
		StorageClass =				{ fg = flatwhite.cyan }, -- static, register, volatile, etc.
		Structure =					{ fg = flatwhite.puple }, -- struct, union, enum, etc.
		Constant =					{ fg = flatwhite.yellow }, -- any constant
		String =					{ fg = flatwhite.green, bg = moonlight.none, style= 'italic' }, -- Any string
		Character =					{ fg = flatwhite.orange }, -- any character constant: 'c', '\n'
		Number =					{ fg = flatwhite.orange }, -- a number constant: 5
		Boolean =					{ fg = flatwhite.orange }, -- a boolean constant: TRUE, false
		Float =						{ fg = flatwhite.orange }, -- a floating point constant: 2.3e10
		Statement =					{ fg = flatwhite.pink }, -- any statement
		Label =						{ fg = flatwhite.purple }, -- case, default, etc.
		Operator =					{ fg = flatwhite.cyan }, -- sizeof", "+", "*", etc.
		Exception =					{ fg = flatwhite.cyan }, -- try, catch, throw
		PreProc =					{ fg = flatwhite.purple }, -- generic Preprocessor
		Include =					{ fg = flatwhite.blue }, -- preprocessor #include
		Define =					{ fg = flatwhite.pink }, -- preprocessor #define
		Macro =						{ fg = flatwhite.cyan }, -- same as Define
		Typedef =					{ fg = flatwhite.red }, -- A typedef
		PreCondit =					{ fg = flatwhite.cyan }, -- preprocessor #if, #else, #endif, etc.
		Special =					{ fg = flatwhite.red }, -- any special symbol
		SpecialChar =				{ fg = flatwhite.pink }, -- special character in a constant
		Tag =						{ fg = flatwhite.red }, -- you can use CTRL-] on this
		Delimiter =					{ fg = flatwhite.cyan }, -- character that needs attention like , or .
		SpecialComment =			{ fg = flatwhite.gray }, -- special things inside a comment
		Debug =						{ fg = flatwhite.red }, -- debugging statements
		Underlined =				{ fg = flatwhite.link, bg = moonlight.none, style = 'underline' }, -- text that stands out, HTML links
		Ignore =					{ fg = flatwhite.disabled }, -- left blank, hidden
		Error =						{ fg = flatwhite.error, bg = moonlight.none, style = 'bold,underline' }, -- any erroneous construct
		Todo =						{ fg = flatwhite.yellow, bg = moonlight.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        htmlLink = { fg = flatwhite.link, style = "underline" },
        htmlH1 = { fg = flatwhite.cyan, style = "bold" },
        htmlH2 = { fg = flatwhite.red, style = "bold" },
        htmlH3 = { fg = flatwhite.green, style = "bold" },
        htmlH4 = { fg = flatwhite.yellow, style = "bold" },
        htmlH5 = { fg = flatwhite.purple, style = "bold" },
        markdownH1 = { fg = flatwhite.cyan, style = "bold" },
        markdownH2 = { fg = flatwhite.red, style = "bold" },
        markdownH3 = { fg = flatwhite.green, style = "bold" },
        markdownH1Delimiter = { fg = flatwhite.cyan },
        markdownH2Delimiter = { fg = flatwhite.red },
        markdownH3Delimiter = { fg = flatwhite.green },
	}

	-- Options:

	-- Italic comments
	if vim.g.flatwhite_italic_comments == true then
		syntax.Comment =		{fg = flatwhite.comments, bg = moonlight.none, style = 'italic'} -- italic comments
	else
		syntax.Comment =		{fg = flatwhite.comments} -- normal comments
	end

	-- Italic Keywords
	if vim.g.flatwhite_italic_keywords == true then
		syntax.Conditional =		{fg = flatwhite.purple, bg = moonlight.none, style = 'italic'} -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = flatwhite.purple, bg = moonlight.none, style = 'italic'} -- italic for, do, while, etc.
		syntax.Repeat =				{fg = flatwhite.purple, bg = moonlight.none, style = 'italic'} -- italic any other keyword
	else
		syntax.Conditional =		{fg = flatwhite.purple} -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = flatwhite.purple} -- normal for, do, while, etc.
		syntax.Repeat =				{fg = flatwhite.purple} -- normal any other keyword
	end

	-- Italic Function names
	if vim.g.flatwhite_italic_functions == true then
		syntax.Function =		{fg = flatwhite.blue, bg = moonlight.none, style = 'italic'} -- italic funtion names
	else
		syntax.Function =		{fg = flatwhite.blue} -- normal function names
	end

	if vim.g.flatwhite_italic_variables == true then
		Identifier =				{fg = flatwhite.gray, bg = moonlight.none, style = 'italic'}; -- any variable name
    else
		Identifier =				{fg = flatwhite.gray}; -- any variable name
    end

    return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

	local editor = {
		NormalFloat =			{ fg = flatwhite.fg, bg = moonlight.float }, -- normal text and background color
		ColorColumn =			{ fg = flatwhite.none, bg = moonlight.active }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = flatwhite.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = flatwhite.cursor, bg = moonlight.none, style = 'reverse' }, -- the character under the cursor
		CursorIM =				{ fg = flatwhite.cursor, bg = moonlight.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = flatwhite.blue, bg = moonlight.none }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = flatwhite.green, bg = moonlight.none, style = 'reverse' }, -- diff mode: Added line
		DiffChange =			{ fg = flatwhite.orange, bg = moonlight.none, style = 'reverse' }, --  diff mode: Changed line
		DiffDelete =			{ fg = flatwhite.red, bg = moonlight.none, style = 'reverse' }, -- diff mode: Deleted line
		DiffText =				{ fg = flatwhite.yellow, bg = moonlight.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
		EndOfBuffer =			{ fg = flatwhite.disabled },
		ErrorMsg =				{ fg = flatwhite.none },
		Folded =				{ fg = flatwhite.disabled, bg = moonlight.none, style = 'italic' },
		FoldColumn =			{ fg = flatwhite.blue },
		IncSearch =				{ fg = flatwhite.highlight, bg = moonlight.white, style = 'reverse' },
		LineNr =				{ fg = flatwhite.line_numbers },
		CursorLineNr =			{ fg = flatwhite.accent },
		MatchParen =			{ fg = flatwhite.yellow, bg = moonlight.none, style = 'bold' },
		ModeMsg =				{ fg = flatwhite.accent },
		MoreMsg =				{ fg = flatwhite.accent },
		NonText =				{ fg = flatwhite.disabled },
		Pmenu =					{ fg = flatwhite.text, bg = moonlight.contrast },
		PmenuSel =				{ fg = flatwhite.accent, bg = moonlight.active },
		PmenuSbar =				{ fg = flatwhite.text, bg = moonlight.contrast },
		PmenuThumb =			{ fg = flatwhite.fg, bg = moonlight.accent },
		Question =				{ fg = flatwhite.green },
		QuickFixLine =			{ fg = flatwhite.highlight, bg = moonlight.white, style = 'reverse' },
		qfLineNr =				{ fg = flatwhite.highlight, bg = moonlight.white, style = 'reverse' },
		Search =				{ fg = flatwhite.highlight, bg = moonlight.white, style = 'reverse' },
		SpecialKey =			{ fg = flatwhite.purple },
		SpellBad =				{ fg = flatwhite.red, bg = moonlight.none, style = 'italic,undercurl' },
		SpellCap =				{ fg = flatwhite.blue, bg = moonlight.none, style = 'italic,undercurl' },
		SpellLocal =			{ fg = flatwhite.cyan, bg = moonlight.none, style = 'italic,undercurl' },
		SpellRare =				{ fg = flatwhite.purple, bg = moonlight.none, style = 'italic,undercurl' },
		StatusLine =			{ fg = flatwhite.fg, bg = moonlight.contrast },
		StatusLineNC =  		{ fg = flatwhite.text, bg = moonlight.disabled },
		StatusLineTerm =		{ fg = flatwhite.fg, bg = moonlight.contrast },
		StatusLineTermNC =		{ fg = flatwhite.text, bg = moonlight.disabled },
		TabLineFill =			{ fg = flatwhite.fg },
		TablineSel =			{ fg = flatwhite.bg, bg = moonlight.accent },
		Tabline =				{ fg = flatwhite.fg },
		Title =					{ fg = flatwhite.green, bg = moonlight.none, style = 'bold' },
		Visual =				{ fg = flatwhite.none, bg = moonlight.selection },
		VisualNOS =				{ fg = flatwhite.none, bg = moonlight.selection },
		WarningMsg =			{ fg = flatwhite.yellow },
		WildMenu =				{ fg = flatwhite.orange, bg = moonlight.none, style = 'bold' },
		CursorColumn =			{ fg = flatwhite.none, bg = moonlight.active },
		CursorLine =			{ fg = flatwhite.none, bg = moonlight.none },
		ToolbarLine =			{ fg = flatwhite.fg, bg = moonlight.bg_alt },
		ToolbarButton =			{ fg = flatwhite.fg, bg = moonlight.none, style = 'bold' },
		NormalMode =			{ fg = flatwhite.accent, bg = moonlight.none, style = 'reverse' },
		InsertMode =			{ fg = flatwhite.green, bg = moonlight.none, style = 'reverse' },
		ReplacelMode =			{ fg = flatwhite.red, bg = moonlight.none, style = 'reverse' },
		VisualMode =			{ fg = flatwhite.purple, bg = moonlight.none, style = 'reverse' },
		CommandMode =			{ fg = flatwhite.gray, bg = moonlight.none, style = 'reverse' },
		Warnings =				{ fg = flatwhite.yellow },

        healthError =           { fg = flatwhite.error },
        healthSuccess =         { fg = flatwhite.green },
        healthWarning =         { fg = flatwhite.yellow },

        -- Dashboard
        DashboardShortCut =                     { fg = flatwhite.blue },
        DashboardHeader =                       { fg = flatwhite.red },
        DashboardCenter =                       { fg = flatwhite.cyan },
        DashboardFooter =                       { fg = flatwhite.green, style = "italic" },

	}

    -- Options:

    --Set transparent background
    if vim.g.flatwhite_disable_background == true then
		editor.Normal =				{ fg = flatwhite.fg, bg = moonlight.none } -- normal text and background color
		editor.SignColumn =			{ fg = flatwhite.fg, bg = moonlight.none }
    else
		editor.Normal =				{ fg = flatwhite.fg, bg = moonlight.bg } -- normal text and background color
		editor.SignColumn =			{ fg = flatwhite.fg, bg = moonlight.bg }
    end

    -- Remove window split borders
    if vim.g.flatwhite_borders == true then
		editor.VertSplit =				{ fg = flatwhite.border }
    else
		editor.VertSplit =				{ fg = flatwhite.bg }
    end

    return editor
end

theme.loadTerminal = function ()

	vim.g.terminal_color_0 = flatwhite.black
	vim.g.terminal_color_1 = flatwhite.red
	vim.g.terminal_color_2 = flatwhite.green
	vim.g.terminal_color_3 = flatwhite.yellow
	vim.g.terminal_color_4 = flatwhite.blue
	vim.g.terminal_color_5 = flatwhite.purple
	vim.g.terminal_color_6 = flatwhite.cyan
	vim.g.terminal_color_7 = flatwhite.white
	vim.g.terminal_color_8 = flatwhite.gray
	vim.g.terminal_color_9 = flatwhite.red
	vim.g.terminal_color_10 = flatwhite.green
	vim.g.terminal_color_11 = flatwhite.yellow
	vim.g.terminal_color_12 = flatwhite.blue
	vim.g.terminal_color_13 = flatwhite.purple
	vim.g.terminal_color_14 = flatwhite.cyan
	vim.g.terminal_color_15 = flatwhite.white

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

    local treesitter = {
        TSAnnotation =              { fg = flatwhite.red },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        TSAttribute =               { fg = flatwhite.yellow },    -- (unstable) TODO: docs
        TSBoolean=                  { fg = flatwhite.orange },    -- For booleans.
        TSCharacter=                { fg = flatwhite.orange },    -- For characters.
        TSConstructor =             { fg = flatwhite.purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstant =                { fg = flatwhite.yellow },    -- For constants
        TSConstBuiltin =            { fg = flatwhite.blue },    -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro =              { fg = flatwhite.blue },    -- For constants that are defined by macros: `NULL` in C.
        TSError =                   { fg = flatwhite.error },    -- For syntax/parser errors.
        TSException =               { fg = flatwhite.yellow },    -- For exception related keywords.
        TSField =                   { fg = flatwhite.gray }, -- For fields.
        TSFloat =                   { fg = flatwhite.red },    -- For floats.
        TSFuncMacro =               { fg = flatwhite.blue },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude =                 { fg = flatwhite.cyan },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSLabel =                   { fg = flatwhite.red }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace =               { fg = flatwhite.yellow },    -- For identifiers referring to modules and namespaces.
        --TSNone =                    { },    -- TODO: docs
        TSNumber =                  { fg = flatwhite.orange },    -- For all numbers
        TSOperator =                { fg = flatwhite.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter =               { fg = flatwhite.paleblue }, -- For parameters of a function.
        TSParameterReference=       { fg = flatwhite.paleblue },    -- For references to parameters of a function.
        TSProperty =                { fg = flatwhite.paleblue }, -- Same as `TSField`.
        TSPunctDelimiter =          { fg = flatwhite.cyan }, -- For delimiters ie: `.`
        TSPunctBracket =            { fg = flatwhite.cyan }, -- For brackets and parens.
        TSPunctSpecial =            { fg = flatwhite.cyan }, -- For special punctutation that does not fall in the catagories before.
        TSString =                  { fg = flatwhite.green },    -- For strings.
        TSStringRegex =             { fg = flatwhite.blue }, -- For regexes.
        TSStringEscape =            { fg = flatwhite.disabled }, -- For escape characters within a string.
        TSSymbol =                  { fg = flatwhite.yellow },    -- For identifiers referring to symbols or atoms.
        TSType =                    { fg = flatwhite.purple },    -- For types.
        TSTypeBuiltin =             { fg = flatwhite.purple },    -- For builtin types.
        TSTag =                     { fg = flatwhite.red },    -- Tags like html tag names.
        TSTagDelimiter =            { fg = flatwhite.yellow },    -- Tag delimiter like `<` `>` `/`
        TSText =                    { fg = flatwhite.text },    -- For strings considered text in a markup language.
        TSTextReference =           { fg = flatwhite.yellow }, -- FIXME
        TSEmphasis =                { fg = flatwhite.paleblue },    -- For text to be represented with emphasis.
        TSUnderline =               { fg = flatwhite.fg, bg = moonlight.none, style = 'underline' },    -- For text to be represented with an underline.
        TSStrike =                  { },    -- For strikethrough text.
        TSTitle =                   { fg = flatwhite.paleblue, bg = moonlight.none, style = 'bold' },    -- Text that is part of a title.
        TSLiteral =                 { fg = flatwhite.fg },    -- Literal text.
        TSURI =                     { fg = flatwhite.link },    -- Any URI like a link or email.
    }

    -- Options:

    -- Italic comments
    if vim.g.flatwhite_italic_comments == true then
        treesitter.TSComment=                  { fg = flatwhite.comments , bg = moonlight.none, style = 'italic' }    -- For comment blocks.
    else
        treesitter.TSComment=                  { fg = flatwhite.comments }    -- For comment blocks.
    end

    if vim.g.flatwhite_italic_keywords == true then
        treesitter.TSConditional =             { fg = flatwhite.purple, style = 'italic' }    -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = flatwhite.purple, style = 'italic' } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = flatwhite.purple, style = 'italic' }    -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = flatwhite.purple, style = 'italic' } -- For keywords used to define a fuction.
    else
        treesitter.TSConditional =             { fg = flatwhite.purple }    -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = flatwhite.purple } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = flatwhite.purple }    -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = flatwhite.purple } -- For keywords used to define a fuction.
    end

    if vim.g.flatwhite_italic_functions == true then
        treesitter.TSFunction =                { fg = flatwhite.blue, style = 'italic' }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = flatwhite.blue, style = 'italic' }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = flatwhite.cyan, style = 'italic' }    -- For builtin functions: `table.insert` in Lua.
    else
        treesitter.TSFunction =                { fg = flatwhite.blue }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = flatwhite.blue }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = flatwhite.cyan }    -- For builtin functions: `table.insert` in Lua.
    end

    if vim.g.flatwhite_italic_variables == true then
        treesitter.TSVariable =                { fg = flatwhite.gray, style = 'italic' } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = flatwhite.gray, style = 'italic' } -- Variable names that are defined by the languages, like `this` or `self`.
    else
        treesitter.TSVariable =                { fg = flatwhite.gray } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = flatwhite.gray } -- Variable names that are defined by the languages, like `this` or `self`.
    end

    return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError =            { fg = flatwhite.error }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError =               { fg = flatwhite.error }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError =           { fg = flatwhite.error }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError =        { fg = flatwhite.error }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = flatwhite.error }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning =          { fg = flatwhite.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning =             { fg = flatwhite.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =         { fg = flatwhite.yellow}, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =      { fg = flatwhite.yellow}, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = flatwhite.yellow }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation =      { fg = flatwhite.paleblue }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation =         { fg = flatwhite.paleblue },  -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation =     { fg = flatwhite.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation =  { fg = flatwhite.paleblue }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = flatwhite.paleblue }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint =             { fg = flatwhite.purple  },  -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint =                { fg = flatwhite.purple  }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint =            { fg = flatwhite.purple  }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint =         { fg = flatwhite.purple  }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = flatwhite.paleblue }, -- used to underline "Hint" diagnostics.
        LspReferenceText =                      { fg = flatwhite.accent, bg = moonlight.highlight }, -- used for highlighting "text" references
        LspReferenceRead =                      { fg = flatwhite.accent, bg = moonlight.highlight }, -- used for highlighting "read" references
        LspReferenceWrite =                     { fg = flatwhite.accent, bg = moonlight.highlight }, -- used for highlighting "write" references
    }

    return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText =                        { fg = flatwhite.text },
        LspTroubleCount =                       { fg = flatwhite.purple, bg = moonlight.active },
        LspTroubleNormal =                      { fg = flatwhite.fg, bg = moonlight.sidebar },

        -- Diff
        diffAdded =                             { fg = flatwhite.green },
        diffRemoved =                           { fg = flatwhite.red },
        diffChanged =                           { fg = flatwhite.yellow },
        diffOldFile =                           { fg = flatwhite.yelow },
        diffNewFile =                           { fg = flatwhite.orange },
        diffFile =                              { fg = flatwhite.blue },
        diffLine =                              { fg = flatwhite.comments },
        diffIndexLine =                         { fg = flatwhite.purple },

        -- Neogit
        NeogitBranch =                          { fg = flatwhite.paleblue },
        NeogitRemote =                          { fg = flatwhite.purple },
        NeogitHunkHeader =                      { fg = flatwhite.fg, bg = moonlight.highlight },
        NeogitHunkHeaderHighlight =             { fg = flatwhite.blue, bg = moonlight.contrast },
        NeogitDiffContextHighlight =            { fg = flatwhite.text, bg = moonlight.contrast },
        NeogitDiffDeleteHighlight =             { fg = flatwhite.red },
        NeogitDiffAddHighlight =                { fg = flatwhite.green },

        -- GitGutter
        GitGutterAdd =                          { fg = flatwhite.green }, -- diff mode: Added line |diff.txt|
        GitGutterChange =                       { fg = flatwhite.yellow }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete =                       { fg = flatwhite.red }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd =                           { fg = flatwhite.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr =                         { fg = flatwhite.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn =                         { fg = flatwhite.green }, -- diff mode: Added line |diff.txt|
        GitSignsChange =                        { fg = flatwhite.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr =                      { fg = flatwhite.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn =                      { fg = flatwhite.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete =                        { fg = flatwhite.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr =                      { fg = flatwhite.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn =                      { fg = flatwhite.red }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopePromptBorder =                 { fg = flatwhite.cyan },
        TelescopeResultsBorder =                { fg = flatwhite.purple },
        TelescopePreviewBorder =                { fg = flatwhite.green },
        TelescopeSelectionCaret =               { fg = flatwhite.purple },
        TelescopeSelection =                    { fg = flatwhite.purple },
        TelescopeMatching =                     { fg = flatwhite.cyan },
        TelescopeNormal =                       { fg = flatwhite.fg, bg = moonlight.float },

        -- NvimTree
        NvimTreeRootFolder =                    { fg = flatwhite.blue, style = "bold" },
        NvimTreeGitDirty =                      { fg = flatwhite.yellow },
        NvimTreeGitNew =                        { fg = flatwhite.green },
        NvimTreeImageFile =                     { fg = flatwhite.yellow },
        NvimTreeExecFile =                      { fg = flatwhite.green },
        NvimTreeSpecialFile =                   { fg = flatwhite.purple , style = "underline" },
        NvimTreeFolderName=                     { fg = flatwhite.paleblue },
        NvimTreeEmptyFolderName=                { fg = flatwhite.disabled },
        NvimTreeFolderIcon=                     { fg = flatwhite.accent },
        NvimTreeIndentMarker =                  { fg  = flatwhite.disabled },
        LspDiagnosticsError =                   { fg = flatwhite.error },
        LspDiagnosticsWarning =                 { fg = flatwhite.yellow },
        LspDiagnosticsInformation =             { fg = flatwhite.paleblue },
        LspDiagnosticsHint =                    { fg = flatwhite.purple },

        -- WhichKey
        WhichKey =                              { fg = flatwhite.accent , style = 'bold'},
        WhichKeyGroup =                         { fg = flatwhite.text },
        WhichKeyDesc =                          { fg = flatwhite.blue, style = 'italic' },
        WhichKeySeperator =                     { fg = flatwhite.fg },
        WhichKeyFloating =                      { bg = flatwhite.float },
        WhichKeyFloat =                         { bg = flatwhite.float },

        -- LspSaga
        DiagnosticError =                       { fg = flatwhite.error },
        DiagnosticWarning =                     { fg = flatwhite.yellow },
        DiagnosticInformation =                 { fg = flatwhite.paleblue },
        DiagnosticHint =                        { fg = flatwhite.purple },
        DiagnosticTruncateLine =                { fg = flatwhite.fg },
        LspFloatWinNormal =                     { bg = flatwhite.contrast },
        LspFloatWinBorder =                     { fg = flatwhite.purple },
        LspSagaBorderTitle =                    { fg = flatwhite.cyan },
        LspSagaHoverBorder =                    { fg = flatwhite.paleblue },
        LspSagaRenameBorder =                   { fg = flatwhite.green },
        LspSagaDefPreviewBorder =               { fg = flatwhite.green },
        LspSagaCodeActionBorder =               { fg = flatwhite.blue },
        LspSagaFinderSelection =                { fg = flatwhite.green },
        LspSagaCodeActionTitle =                { fg = flatwhite.paleblue },
        LspSagaCodeActionContent =              { fg = flatwhite.purple },
        LspSagaSignatureHelpBorder =            { fg = flatwhite.pink },
        ReferencesCount =                       { fg = flatwhite.purple },
        DefinitionCount =                       { fg = flatwhite.purple },
        DefinitionIcon =                        { fg = flatwhite.blue },
        ReferencesIcon =                        { fg = flatwhite.blue },
        TargetWord =                            { fg = flatwhite.cyan },

        -- BufferLine
        BufferLineIndicatorSelected =           { fg = flatwhite.accent },
        BufferLineFill =                        { bg = flatwhite.bg_alt },

        -- Sneak
        Sneak =                                 { fg = flatwhite.bg, bg = moonlight.accent },
        SneakScope =                            { bg = flatwhite.selection },

        -- Indent Blankline
        IndentBlanklineChar =                   { fg = flatwhite.highlight },
        IndentBlanklineContextChar =            { fg = flatwhite.disabled },

	 -- Nvim dap
         DapBreakpoint =                         { fg = flatwhite.red },
         DapStopped =                            { fg = flatwhite.green },
    }

    -- Options:

    -- Disable nvim-tree background
        if vim.g.flatwhite_disable_background == true then
            plugins.NvimTreeNormal =                        { fg = flatwhite.fg, bg = moonlight.none }
        else
            plugins.NvimTreeNormal =                        { fg = flatwhite.fg, bg = moonlight.sidebar }
        end

    return plugins

end

return theme
