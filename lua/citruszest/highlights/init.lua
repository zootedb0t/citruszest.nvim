local M = {}

M.theme = function(C)
	return {
		ColorColumn = { bg = C.none }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = C.cyan }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = C.cursor, bg = C.text }, -- character under the cursor
		lCursor = { fg = C.cursor, bg = C.text }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = C.cursor, bg = C.text }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = C.bright_black }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine = { bg = C.bright_black }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if forecrust (ctermfg OR guifg) is not set.
		Directory = { fg = C.yellow }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = C.background }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = C.red }, -- error messages on the command line
		VertSplit = { fg = C.bright_black }, -- the column separating vertically split windows
		Folded = { fg = C.orange, bg = C.background }, -- line used for closed folds
		FoldColumn = { fg = C.orange, bg = C.background }, -- 'foldcolumn'
		SignColumn = { fg = C.background, bg = C.background }, -- column where |signs| are displayed
		SignColumnSB = { bg = C.background, fg = C.background }, -- column where |signs| are displayed
		Substitute = { bg = C.background, fg = C.orange }, -- |:substitute| replacement text highlighting
		LineNr = { fg = C.bright_magenta }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr = { fg = C.foreground }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { fg = C.yellow, bg = C.background }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = C.text }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea = { fg = C.text }, -- Area for messages and cmdline, don't set this highlight because of https://github.com/neovim/neovim/issues/17832
		MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = C.cyan }, -- |more-prompt|
		NonText = { fg = C.bright_magenta }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = C.foreground, bg = C.background }, -- normal text
		NormalNC = { fg = C.foreground, bg = C.background }, -- normal text in non-current windows
		NormalSB = { fg = C.text }, -- normal text in non-current windows
		NormalFloat = { bg = C.background }, -- Normal text in floating windows.
		FloatBorder = { fg = C.orange },
		FloatTitle = { fg = C.yellow }, -- Title of floating windows
		Pmenu = { fg = C.bright_white, bg = C.background }, -- Popup menu: normal item.
		PmenuSel = { fg = C.white, bg = C.bright_black, bold = true }, -- Popup menu: selected item.
		PmenuSbar = { bg = C.bright_orange }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = C.bright_orange }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = C.cyan }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = C.bright_black, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { fg = C.magenta, bg = C.background }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		IncSearch = { fg = C.bright_cyan, bg = C.background }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		CurSearch = { fg = C.bright_black, bg = C.bright_orange }, -- 'cursearch' highlighting: highlights the current search you're on differently
		SpecialKey = { fg = C.text }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
		SpellBad = { sp = C.red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = C.yellow, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = C.cyan, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = C.green, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = C.text, bg = C.background }, -- status line of current window
		StatusLineNC = { fg = C.foreground, bg = C.background }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = C.bright_cyan, fg = C.bright_black }, -- tab pages line, not active tab page label
		TabLineFill = {}, -- tab pages line, where there are no labels
		TabLineSel = { fg = C.cyan, bg = C.background }, -- tab pages line, active tab page label
		Title = { fg = C.cyan, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
		Visual = { bg = C.bright_black, bold = true }, -- Visual mode selection
		VisualNOS = { bg = C.bright_black, bold = true }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = C.bright_red }, -- warning messages
		Whitespace = { fg = C.white }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { fg = C.foreground, bg = C.background }, -- current match in 'wildmenu' completion
		WinBar = { fg = C.bright_white },

		Comment = { fg = C.bright_black }, -- just comments
		SpecialComment = { link = "Special" }, -- special things inside a comment
		Constant = { fg = C.orange }, -- (preferred) any constant
		String = { fg = C.bright_green }, -- a string constant: "this is a string"
		Character = { fg = C.bright_red }, --  a character constant: 'c', '\n'
		Number = { fg = C.magenta }, --   a number constant: 234, 0xff
		Float = { fg = C.cyan }, --    a floating point constant: 2.3e10
		Boolean = { fg = C.orange }, --  a boolean constant: TRUE, false
		Identifier = { fg = C.bright_yellow }, -- (preferred) any variable name
		Function = { fg = C.orange }, -- function name (also: methods for classes)
		Statement = { fg = C.bright_green }, -- (preferred) any statement
		Conditional = { fg = C.bright_orange }, --  if, then, else, endif, switch, etc.
		Repeat = { fg = C.bright_magenta }, --   for, do, while, etc.
		Label = { fg = C.bright_green }, --    case, default, etc.
		Operator = { fg = C.bright_red }, -- "sizeof", "+", "*", etc.
		Keyword = { fg = C.bright_orange }, --  any other keyword
		Array = { fg = C.magenta },
		-- Exception     = { }, --  try, catch, throw

		PreProc = { fg = C.magenta }, -- (preferred) generic Preprocessor
		Include = { fg = C.bright_yellow }, --  preprocessor #include
		Define = { link = "PreProc" }, -- preprocessor #define
		Macro = { fg = C.orange }, -- same as Define
		PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

		StorageClass = { fg = C.yellow }, -- static, register, volatile, etc.
		Structure = { fg = C.yellow }, --  struct, union, enum, etc.
		Special = { fg = C.bright_orange }, -- (preferred) any special symbol
		Type = { fg = C.yellow }, -- (preferred) int, long, char, etc.
		Typedef = { link = "Type" }, --  A typedef
		SpecialChar = { link = "Special" }, -- special character in a constant
		Tag = { link = "Special" }, -- you can use CTRL-] on this
		Delimiter = { link = "Special" }, -- character that needs attention
		Debug = { link = "Special" }, -- debugging statements

		Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
		Bold = { bold = true },
		Italic = { italic = true },

		Error = { fg = C.red }, -- (preferred) any erroneous construct
		Todo = { bg = C.yellow }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = C.yellow },
		qfFileName = { fg = C.cyan },
		htmlH1 = { fg = C.magenta, bold = true },
		htmlH2 = { fg = C.cyan, bold = true },
		mkdCodeDelimiter = { bg = C.background, fg = C.text },
		mkdCodeStart = { fg = C.bright_cyan, bold = true },
		mkdCodeEnd = { fg = C.cyan, bold = true },

		-- debugging
		debugPC = { bg = C.background }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = C.background, fg = C.foreground }, -- used for breakpoint colors in terminal-debug

		-- illuminate
		illuminatedWord = { bg = C.text },
		illuminatedCurWord = { bg = C.bright_black },

		-- diff
		diffAdded = { fg = C.green },
		diffRemoved = { fg = C.red },
		diffChanged = { fg = C.magenta },
		diffOldFile = { fg = C.yellow },
		diffNewFile = { fg = C.orange },
		diffFile = { fg = C.cyan },
		diffLine = { fg = C.bright_cyan },
		diffIndexLine = { fg = C.bright_black },
		DiffAdd = { bg = C.green }, -- diff mode: Added line |diff.txt|
		DiffChange = { bg = C.yellow }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { bg = C.red }, -- diff mode: Deleted line |diff.txt|
		DiffText = { bg = C.bright_black }, -- diff mode: Changed text within a changed line |diff.txt|

		-- NeoVim
		healthError = { fg = C.red },
		healthSuccess = { fg = C.orange },
		healthWarning = { fg = C.yellow },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = C.red },
		GlyphPalette2 = { fg = C.cyan },
		GlyphPalette3 = { fg = C.yellow },
		GlyphPalette4 = { fg = C.cyan },
		GlyphPalette6 = { fg = C.magenta },
		GlyphPalette7 = { fg = C.text },
		GlyphPalette9 = { fg = C.red },

		-- rainbow
		rainbow1 = { fg = C.red },
		rainbow2 = { fg = C.magenta },
		rainbow3 = { fg = C.yellow },
		rainbow4 = { fg = C.green },
		rainbow5 = { fg = C.bright_orange },
		rainbow6 = { fg = C.bright_cyan },

		-- Native LSP

		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups, or use their own. Consult your LSP client's
		-- documentation.
		LspReferenceText = { bg = C.black }, -- used for highlighting "text" references
		LspReferenceRead = { bg = C.black }, -- used for highlighting "read" references
		LspReferenceWrite = { bg = C.black }, -- used for highlighting "write" references
		-- highlight diagnostics in numberline

		DiagnosticError = { bg = C.none, fg = C.red, bold = true }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
		DiagnosticWarn = { bg = C.none, fg = C.bright_yellow }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
		DiagnosticInfo = { bg = C.none, fg = C.magenta }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
		DiagnosticHint = { bg = C.none, fg = C.bright_cyan }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default

		DiagnosticFloatingError = { fg = C.red }, -- Used to color "Error" diagnostic messages in diagnostics float
		DiagnosticFloatingWarn = { fg = C.bright_yellow }, -- Used to color "Warn" diagnostic messages in diagnostics float
		DiagnosticFloatingInfo = { fg = C.magenta }, -- Used to color "Info" diagnostic messages in diagnostics float
		DiagnosticFloatingHint = { fg = C.bright_cyan }, -- Used to color "Hint" diagnostic messages in diagnostics float

		DiagnosticSignError = { fg = C.red }, -- Used for "Error" signs in sign column
		DiagnosticSignWarn = { fg = C.bright_yellow }, -- Used for "Warn" signs in sign column
		DiagnosticSignInfo = { fg = C.magenta }, -- Used for "Info" signs in sign column
		DiagnosticSignHint = { fg = C.bright_cyan }, -- Used for "Hint" signs in sign column

		LspDiagnosticsError = { fg = C.red },
		LspDiagnosticsWarning = { fg = C.bright_yellow },
		LspDiagnosticsInformation = { fg = C.magenta },
		LspDiagnosticsHint = { fg = C.bright_cyan },
		LspDiagnosticsVirtualTextError = { fg = C.red, bg = C.background }, -- Used for "Error" diagnostic virtual text
		LspDiagnosticsVirtualTextWarning = { fg = C.bright_yellow, bg = C.background }, -- Used for "Warning" diagnostic virtual text
		LspDiagnosticsVirtualTextInformation = { fg = C.magenta, bg = C.background }, -- Used for "Information" diagnostic virtual text
		LspDiagnosticsVirtualTextHint = { fg = C.bright_cyan, bg = C.background }, -- Used for "Hint" diagnostic virtual text
		LspDiagnosticsUnderlineError = { fg = C.red, bg = C.background, underline = true }, -- Used to underline "Error" diagnostics
		LspDiagnosticsUnderlineWarning = { fg = C.bright_yellow, bg = C.background, underline = true }, -- Used to underline "Warning" diagnostics
		LspDiagnosticsUnderlineInformation = { fg = C.magenta, bg = C.background, underline = true }, -- Used to underline "Information" diagnostics
		LspDiagnosticsUnderlineHint = { fg = C.bright_cyan, bg = C.background, underline = true }, -- Used to underline "Hint" diagnostics
		LspCodeLens = { fg = C.bright_cyan }, -- virtual text of the codelens
		LspInlayHint = {
			-- fg of `Comment`
			fg = C.bright_cyan,
			-- bg of `CursorLine`
			bg = C.background,
		}, -- virtual text of the inlay hints
		LspInfoBorder = { link = "FloatBorder" }, -- LspInfo border

		--TODO Tressitter highlights
	}
end

return M
