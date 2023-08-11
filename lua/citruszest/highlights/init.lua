local M = {}

---@param C table
---@param O table
---@return table
M.theme = function(C, O)
  return {
    ColorColumn = { bg = C.none }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = C.cyan }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = C.cursor, bg = C.white }, -- character under the cursor
    lCursor = { fg = C.cursor, bg = C.white }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = C.cursor, bg = C.white }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { bg = C.bright_black }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = C.cursor }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if forecrust (ctermfg OR guifg) is not set.
    Directory = { fg = C.bright_yellow }, -- directory names (and other special names in listings)
    EndOfBuffer = { fg = C.background }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg = { fg = C.red }, -- error messages on the command line
    VertSplit = { fg = C.bright_black }, -- the column separating vertically split windows
    Folded = { fg = C.orange, bg = C.background }, -- line used for closed folds FoldColumn = { fg = C.orange, bg = C.background }, -- 'foldcolumn' SignColumn = { fg = C.foreground, bg = C.background }, -- column where |signs| are displayed
    FoldColumn = { fg = C.orange, bg = C.background }, -- 'foldcolumn'
    SignColumn = { fg = C.foreground, bg = C.background }, -- column where |signs| are displayed
    SignColumnSB = { fg = C.foreground, bg = C.background }, -- column where |signs| are displayed
    Substitute = { fg = C.orange, bg = C.background }, -- |:substitute| replacement text highlighting
    LineNr = { fg = C.bright_black }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = C.yellow }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
    MatchParen = { fg = C.yellow, bg = C.background, bold = O.bold }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = C.white }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = C.cyan }, -- |more-prompt|
    NonText = { fg = C.bright_cyan }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = C.foreground, bg = C.background }, -- normal text
    NormalNC = { fg = C.foreground, bg = C.background }, -- normal text in non-current windows
    NormalSB = { fg = C.foreground }, -- normal text in non-current windows
    NormalFloat = { bg = C.background }, -- Normal text in floating windows.
    FloatBorder = { fg = C.orange },
    FloatTitle = { fg = C.yellow }, -- Title of floating windows
    Pmenu = { fg = C.bright_white, bg = C.background }, -- Popup menu: normal item.
    PmenuSel = { fg = C.orange, bg = C.cursor, bold = O.bold }, -- Popup menu: selected item.
    PmenuSbar = { bg = C.bright_orange }, -- Popup menu: scrollbar.
    PmenuThumb = { bg = C.bright_orange }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = C.cyan }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = C.bright_black, bold = O.bold }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { fg = C.bright_white, bg = C.background }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { fg = C.black, bg = C.orange }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { fg = C.black, bg = C.bright_orange }, -- 'cursearch' highlighting: highlights the current search you're on differently
    SpecialKey = { fg = C.orange }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
    SpellBad = { sp = C.red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = C.yellow, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = C.cyan, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = C.green, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = C.foreground, bg = C.black }, -- status line of current window
    StatusLineNC = { fg = C.foreground, bg = C.cursor }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { fg = C.white, bg = C.visual }, -- tab pages line, not active tab page label
    TabLineFill = {}, -- tab pages line, where there are no labels
    TabLineSel = { fg = C.green, bg = C.visual }, -- tab pages line, active tab page label
    Title = { fg = C.cyan, bold = O.bold }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = C.visual, bold = O.bold }, -- Visual mode selection
    VisualNOS = { bg = C.bright_black, bold = O.bold }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = C.bright_red }, -- warning messages
    Whitespace = { fg = C.white }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { fg = C.foreground, bg = C.background }, -- current match in 'wildmenu' completion
    WinBar = { fg = C.bright_white },

    Comment = { fg = C.bright_black }, -- just comments
    SpecialComment = { link = "Special" }, -- special things inside a comment
    Constant = { fg = C.cyan }, -- (preferred) any constant
    String = { fg = C.bright_orange }, -- a string constant: "this is a string"
    Character = { fg = C.bright_red }, --  a character constant: 'c', '\n'
    Number = { fg = C.bright_cyan }, --   a number constant: 234, 0xff
    Float = { link = "Number" }, --    a floating point constant: 2.3e10
    Boolean = { fg = C.orange }, --  a boolean constant: TRUE, false
    Identifier = { fg = C.bright_white, italic = O.italic, bold = O.bold }, -- (preferred) any variable name
    Function = { fg = C.bright_green }, -- function name (also: methods for classes)
    Statement = { fg = C.blue }, -- (preferred) any statement
    Conditional = { fg = C.orange }, --  if, then, else, endif, switch, etc.
    Repeat = { fg = C.bright_yellow }, --   for, do, while, etc.
    Label = { fg = C.bright_green }, --    case, default, etc.
    Operator = { fg = C.bright_cyan }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = C.bright_yellow }, --  any other keyword
    Array = { fg = C.blue },
    Exception = { fg = C.blue }, --  try, catch, throw

    PreProc = { fg = C.bright_green }, -- (preferred) generic Preprocessor
    Include = { fg = C.bright_yellow }, --  preprocessor #include
    Define = { link = "PreProc" }, -- preprocessor #define
    Macro = { fg = C.yellow }, -- same as Define
    PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

    StorageClass = { fg = C.bright_yellow }, -- static, register, volatile, etc.
    Structure = { link = "Keyword" }, --  struct, union, enum, etc.
    Special = { fg = C.bright_orange }, -- (preferred) any special symbol
    Type = { fg = C.blue }, -- (preferred) int, long, char, etc.
    Typedef = { link = "Type" }, --  A typedef
    SpecialChar = { link = "Special" }, -- special character in a constant
    Tag = { link = "Special" }, -- you can use CTRL-] on this
    Delimiter = { link = "Special" }, -- character that needs attention
    Debug = { link = "Special" }, -- debugging statements

    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
    Bold = { bold = true },
    Italic = { italic = true },

    Error = { fg = C.red }, -- (preferred) any erroneous construct
    Todo = { fg = C.black, bg = C.yellow }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    qfLineNr = { fg = C.yellow },
    qfFileName = { fg = C.cyan },
    htmlH1 = { fg = C.blue, bold = O.bold },
    htmlH2 = { fg = C.cyan, bold = O.bold },
    mkdCodeDelimiter = { bg = C.background, fg = C.white },
    mkdCodeStart = { fg = C.bright_cyan, bold = O.bold },
    mkdCodeEnd = { fg = C.cyan, bold = O.bold },

    -- debugging
    debugPC = { bg = C.background }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { bg = C.background, fg = C.foreground }, -- used for breakpoint colors in terminal-debug

    -- illuminate
    illuminatedWord = { bg = C.black },
    illuminatedCurWord = { bg = C.bright_black },

    -- diff
    diffAdded = { fg = C.green },
    diffRemoved = { fg = C.red },
    diffChanged = { fg = C.bright_yellow },
    diffOldFile = { fg = C.yellow },
    diffNewFile = { fg = C.orange },
    diffFile = { fg = C.cyan },
    diffLine = { fg = C.bright_cyan },
    diffIndexLine = { fg = C.bright_black },
    DiffAdd = { fg = C.green, bg = C.none, reverse = true }, -- diff mode: Added line |diff.txt|
    DiffChange = { fg = C.yellow, bg = C.none, reverse = true }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { fg = C.red, bg = C.none, reverse = true }, -- diff mode: Deleted line |diff.txt|
    DiffText = { bg = C.bright_black }, -- diff mode: Changed text within a changed line |diff.txt|

    -- NeoVim
    healthError = { fg = C.red },
    healthSuccess = { fg = C.green },
    healthWarning = { fg = C.yellow },
    -- misc

    -- glyphs
    GlyphPalette1 = { fg = C.red },
    GlyphPalette2 = { fg = C.cyan },
    GlyphPalette3 = { fg = C.yellow },
    GlyphPalette4 = { fg = C.cyan },
    GlyphPalette6 = { fg = C.blue },
    GlyphPalette7 = { fg = C.white },
    GlyphPalette9 = { fg = C.red },

    -- rainbow
    rainbow1 = { fg = C.red },
    rainbow2 = { fg = C.blue },
    rainbow3 = { fg = C.yellow },
    rainbow4 = { fg = C.green },
    rainbow5 = { fg = C.orange },
    rainbow6 = { fg = C.bright_cyan },

    -- Native LSP

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText = { bg = C.visual }, -- used for highlighting "text" references
    LspReferenceRead = { bg = C.visual }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = C.visual }, -- used for highlighting "write" references
    -- highlight diagnostics in numberline

    DiagnosticError = { bg = C.none, fg = C.red, bold = O.bold }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { bg = C.none, fg = C.bright_yellow }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { bg = C.none, fg = C.blue }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { bg = C.none, fg = C.bright_cyan }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default

    DiagnosticFloatingError = { fg = C.red }, -- Used to color "Error" diagnostic messages in diagnostics float
    DiagnosticFloatingWarn = { fg = C.bright_yellow }, -- Used to color "Warn" diagnostic messages in diagnostics float
    DiagnosticFloatingInfo = { fg = C.blue }, -- Used to color "Info" diagnostic messages in diagnostics float
    DiagnosticFloatingHint = { fg = C.bright_cyan }, -- Used to color "Hint" diagnostic messages in diagnostics float

    DiagnosticSignError = { fg = C.red }, -- Used for "Error" signs in sign column
    DiagnosticSignWarn = { fg = C.bright_yellow }, -- Used for "Warn" signs in sign column
    DiagnosticSignInfo = { fg = C.blue }, -- Used for "Info" signs in sign column
    DiagnosticSignHint = { fg = C.bright_cyan }, -- Used for "Hint" signs in sign column

    LspDiagnosticsError = { fg = C.red },
    LspDiagnosticsWarning = { fg = C.bright_yellow },
    LspDiagnosticsInformation = { fg = C.blue },
    LspDiagnosticsHint = { fg = C.bright_cyan },
    LspDiagnosticsVirtualTextError = { fg = C.red, bg = C.background }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning = { fg = C.bright_yellow, bg = C.background }, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation = { fg = C.blue, bg = C.background }, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint = { fg = C.bright_cyan, bg = C.background }, -- Used for "Hint" diagnostic virtual text
    LspDiagnosticsUnderlineError = { fg = C.red, bg = C.background, underline = true }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning = { fg = C.bright_yellow, bg = C.background, underline = true }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation = { fg = C.blue, bg = C.background, underline = true }, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint = { fg = C.bright_cyan, bg = C.background, underline = true }, -- Used to underline "Hint" diagnostics
    LspCodeLens = { fg = C.bright_cyan }, -- virtual text of the codelens
    LspInlayHint = {
      fg = C.white,
      bg = C.background,
    }, -- virtual text of the inlay hints
    LspInfoBorder = { link = "FloatBorder" }, -- LspInfo border

    -- Semantic Tokens
    ["@lsp.type.boolean"] = { link = "@boolean" },
    ["@lsp.type.builtinType"] = { link = "@type.builtin" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
    ["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
    ["@lsp.type.interface"] = { fg = C.bright_blue },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.typeAlias"] = { link = "@type.definition" },
    ["@lsp.type.unresolvedReference"] = { link = "@error" },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
    ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
    ["@lsp.mod.documentation.lua"] = { link = "Comment" },
    ["@lsp.typemod.keyword.documentation.lua"] = { link = "Comment" },

    -- Tressitter highlights
    ["@comment"] = { link = "Comment" },
    ["@error"] = { link = "Error" },
    ["@preproc"] = { link = "PreProc" }, -- various preprocessor directives & shebangs
    ["@define"] = { link = "Define" }, -- preprocessor definition directives
    ["@operator"] = { link = "Operator" }, -- For any operator: +, but also -> and * in C.

    -- Punctuation
    ["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters ie: .
    ["@punctuation.bracket"] = { fg = C.bright_orange }, -- For brackets and parenthesis.
    ["@punctuation.special"] = { link = "Special" }, -- For special punctutation that does not fall in the categories before.

    -- Literals
    ["@string"] = { link = "String" }, -- For strings.
    ["@string.regex"] = { fg = C.bright_orange }, -- For regexes.
    ["@string.escape"] = { fg = C.bright_yellow }, -- For escape characters within a string.
    ["@string.special"] = { link = "Special" }, -- other special strings (e.g. dates)

    ["@character"] = { link = "Character" }, -- character literals
    ["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)

    ["@boolean"] = { link = "Boolean" }, -- For booleans.
    ["@number"] = { link = "Number" }, -- For all numbers
    ["@float"] = { link = "Float" }, -- For floats.

    -- Functions
    ["@function"] = { link = "Function" }, -- For function (calls and definitions).
    ["@function.builtin"] = { fg = C.bright_yellow }, -- For builtin functions: table.insert in Lua.
    ["@function.call"] = { link = "Function" }, -- function calls
    ["@function.macro"] = { fg = C.blue }, -- For macro defined functions (calls and definitions): each macro_rules in RusC.
    ["@method"] = { link = "Function" }, -- For method calls and definitions.

    ["@method.call"] = { link = "Function" }, -- method calls

    ["@constructor"] = { fg = C.bright_yellow }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
    ["@parameter"] = { fg = C.bright_yellow, italic = O.italic }, -- For parameters of a function.

    -- Keywords
    ["@keyword"] = { link = "Keyword" }, -- For keywords that don't fall in previous categories.
    ["@keyword.function"] = { fg = C.bright_red }, -- For keywords used to define a function.
    ["@keyword.operator"] = { link = "Operator" }, -- For new keyword operator
    ["@keyword.return"] = { fg = C.bright_red },
    -- JS & derivative
    ["@keyword.export"] = { fg = C.bright_cyan },

    ["@conditional"] = { link = "Conditional" }, -- For keywords related to conditionnals.
    ["@repeat"] = { link = "Repeat" }, -- For keywords related to loops.
    -- @debug            ; keywords related to debugging
    ["@label"] = { link = "Label" }, -- For labels: label: in C and :label: in Lua.
    ["@include"] = { link = "Include" }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
    ["@exception"] = { fg = C.bright_yellow }, -- For exception related keywords.

    -- Types

    ["@type"] = { link = "Type" }, -- For types.
    ["@type.builtin"] = { link = "@type", italic = O.italic }, -- For builtin types.
    ["@type.definition"] = { link = "@type" }, -- type definitions (e.g. `typedef` in C)
    ["@type.qualifier"] = { link = "Constant" }, -- type qualifiers (e.g. `const`)

    ["@storageclass"] = { link = "StorageClass" }, -- visibility/life-time/etc. modifiers (e.g. `static`)
    ["@attribute"] = { link = "Constant" }, -- attribute annotations (e.g. Python decorators)
    ["@field"] = { fg = C.bright_cyan }, -- For fields.
    ["@property"] = { fg = C.bright_cyan }, -- Same as TSField.

    -- Identifiers
    ["@variable"] = { link = "Identifier" }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"] = { fg = C.bright_yellow }, -- Variable names that are defined by the languages, like this or self.

    ["@constant"] = { link = "Constant" }, -- For constants
    ["@constant.builtin"] = { fg = C.red }, -- For constant that are built in the language: nil in Lua.
    ["@constant.macro"] = { link = "Macro" }, -- For constants that are defined by macros: NULL in C.

    ["@namespace"] = { fg = C.bright_yellow, italic = O.italic }, -- For identifiers referring to modules and namespaces.
    ["@symbol"] = { fg = C.yellow },

    -- Text
    ["@text"] = { fg = C.bright_white }, -- For strings considerated text in a markup language.
    ["@text.strong"] = { fg = C.bright_red, bold = true }, -- bold
    ["@text.emphasis"] = { fg = C.bright_orange, italic = O.italic }, -- italic
    ["@text.underline"] = { link = "Underline" }, -- underlined text
    ["@text.strike"] = { fg = C.white, strikethrough = true }, -- strikethrough text
    ["@text.title"] = { fg = C.white, bold = O.bold }, -- titles like: # Example
    ["@text.literal"] = { fg = C.blue }, -- used for inline code in markdown and for doc in python (""")
    ["@text.uri"] = { fg = C.green, italic = O.italic }, -- urls, links and emails
    ["@text.html"] = { fg = C.bright_white, underline = true }, -- urls, links and emails
    ["@text.math"] = { fg = C.cyan }, -- math environments (e.g. `$ ... $` in LaTeX)
    ["@text.environment"] = { fg = C.orange }, -- text environments of markup languages
    ["@text.environment.name"] = { fg = C.cyan }, -- text indicating the type of an environment
    ["@text.reference"] = { fg = C.blue, bold = O.bold }, -- references

    ["@text.todo"] = { fg = C.black, bg = C.yellow }, -- todo notes
    ["@text.todo.checked"] = { fg = C.green }, -- todo notes
    ["@text.todo.unchecked"] = { fg = C.black, bg = C.yellow }, -- todo notes
    ["@text.note"] = { fg = C.black, bg = C.cyan },
    ["@text.warning"] = { fg = C.black, bg = C.yellow },
    ["@text.danger"] = { fg = C.black, bg = C.red },

    ["@text.diff.add"] = { link = "diffAdded" }, -- added text (for diff files)
    ["@text.diff.delete"] = { link = "diffRemoved" }, -- deleted text (for diff files)

    -- Tags
    ["@tag"] = { fg = C.bright_blue }, -- Tags like html tag names.
    ["@tag.attribute"] = { fg = C.bright_yellow, italic = O.italic }, -- Tags like html tag names.
    ["@tag.delimiter"] = { fg = C.red }, -- Tag delimiter like < > /

    -- Language specific:

    -- markdown
    ["@text.title.2.markdown"] = { link = "rainbow2" },
    ["@text.title.1.markdown"] = { link = "rainbow1" },
    ["@text.title.3.markdown"] = { link = "rainbow3" },
    ["@text.title.4.markdown"] = { link = "rainbow4" },
    ["@text.title.5.markdown"] = { link = "rainbow5" },
    ["@text.title.6.markdown"] = { link = "rainbow6" },

    -- css
    ["@property.css"] = { fg = C.bright_green },
    ["@property.id.css"] = { fg = C.cyan },
    ["@property.class.css"] = { fg = C.yellow },
    ["@type.css"] = { fg = C.bright_red },
    ["@type.tag.css"] = { fg = C.bright_orange },
    ["@string.plain.css"] = { fg = C.yellow },
    ["@number.css"] = { fg = C.yellow },

    -- toml
    ["@property.toml"] = { fg = C.cyan }, -- Differentiates between string and properties

    -- json
    ["@label.json"] = { fg = C.bright_green }, -- For labels: label: in C and :label: in Lua.

    -- lua
    ["@constructor.lua"] = { fg = C.bright_red }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.

    -- typescript
    ["@constructor.typescript"] = { fg = C.bright_green },

    -- TSX (Typescript React)
    ["@constructor.tsx"] = { fg = C.bright_green },
    ["@tag.attribute.tsx"] = { fg = C.bright_yellow, italic = O.italic },

    -- cpp
    ["@property.cpp"] = { fg = C.bright_orange },

    -- yaml
    ["@field.yaml"] = { fg = C.bright_green }, -- For fields.

    -- Ruby
    ["@symbol.ruby"] = { fg = C.bright_yellow },

    -- PHP
    ["@type.qualifier.php"] = { link = "Keyword" }, -- type qualifiers (e.g. `const`)
    ["@method.php"] = { link = "Function" },
    ["@method.call.php"] = { link = "Function" },

    -- Pyhton
    ["@string.documentation.python"] = { fg = C.blue },

    -- Cmp
    CmpItemAbbr = { fg = C.bright_white },
    CmpItemAbbrDeprecated = { fg = C.visual, strikethrough = true },
    CmpItemKind = { fg = C.cyan },
    CmpItemMenu = { fg = C.white },
    CmpItemAbbrMatch = { fg = C.bright_green, bold = O.bold },
    CmpItemAbbrMatchFuzzy = { fg = C.bright_green, bold = O.bold },

    -- kind support
    CmpItemKindSnippet = { fg = C.blue },
    CmpItemKindKeyword = { fg = C.orange },
    CmpItemKindText = { fg = C.blue },
    CmpItemKindMethod = { fg = C.cyan },
    CmpItemKindConstructor = { fg = C.cyan },
    CmpItemKindFunction = { fg = C.bright_yellow },
    CmpItemKindFolder = { fg = C.cyan },
    CmpItemKindModule = { fg = C.bright_orange },
    CmpItemKindConstant = { fg = C.bright_cyan },
    CmpItemKindField = { fg = C.green },
    CmpItemKindProperty = { fg = C.green },
    CmpItemKindEnum = { fg = C.green },
    CmpItemKindUnit = { fg = C.green },
    CmpItemKindClass = { fg = C.yellow },
    CmpItemKindVariable = { fg = C.blue },
    CmpItemKindFile = { fg = C.cyan },
    CmpItemKindInterface = { fg = C.yellow },
    CmpItemKindColor = { fg = C.red },
    CmpItemKindReference = { fg = C.red },
    CmpItemKindEnumMember = { fg = C.red },
    CmpItemKindStruct = { fg = C.cyan },
    CmpItemKindValue = { fg = C.blue },
    CmpItemKindEvent = { fg = C.cyan },
    CmpItemKindOperator = { fg = C.cyan },
    CmpItemKindTypeParameter = { fg = C.cyan },
    CmpItemKindCopilot = { fg = C.bright_orange },

    -- Gitsigns
    SignAdd = { fg = C.bright_green, bg = C.none },
    SignChange = { fg = C.yellow, bg = C.none },
    SignDelete = { fg = C.red, bg = C.none },
    GitSignsAdd = { fg = C.green, bg = C.none },
    GitSignsChange = { fg = C.yellow, bg = C.none },
    GitSignsDelete = { fg = C.red, bg = C.none },
    GitSignsAddInline = { fg = C.green, bg = C.none },
    GitSignsChangeInline = { fg = C.orange, bg = C.none },
    GitSignsDeleteInline = { fg = C.red, bg = C.none },

    -- Fidget
    FidgetTask = {
      fg = C.cyan,
      bg = C.black,
    },
    FidgetTitle = { fg = C.red },

    -- Rainbow Delimiter
    RainbowDelimiterRed = { fg = C.red },
    RainbowDelimiterYellow = { fg = C.bright_yellow },
    RainbowDelimiterBlue = { fg = C.blue },
    RainbowDelimiterOrange = { fg = C.bright_orange },
    RainbowDelimiterGreen = { fg = C.bright_green },
    RainbowDelimiterViolet = { fg = C.bright_red },
    RainbowDelimiterCyan = { fg = C.bright_cyan },

    -- Telescope
    TelescopePromptPrefix = { fg = C.bright_orange, bg = C.background },
    TelescopeSelectionCaret = { fg = C.orange, bg = C.visual, bold = O.bold },
    TelescopePromptNormal = { bg = C.background },
    TelescopeResultsNormal = { bg = C.background },
    TelescopePreviewNormal = { bg = C.background },
    TelescopePromptBorder = { fg = C.bright_cyan, bg = C.background },
    TelescopeResultsBorder = { fg = C.bright_cyan, bg = C.background },
    TelescopePreviewBorder = { fg = C.bright_cyan, bg = C.background },
    TelescopePromptTitle = { fg = C.black, bg = C.yellow },
    TelescopeResultsTitle = { fg = C.black, bg = C.yellow },
    TelescopePreviewTitle = { fg = C.black, bg = C.yellow },

    -- NvimTree
    NvimTreeFolderName = { fg = C.bright_yellow },
    NvimTreeFolderIcon = { fg = C.bright_orange },
    NvimTreeNormal = { fg = C.bright_white, bg = C.background },
    NvimTreeOpenedFolderName = { fg = C.bright_green, bold = O.bold },
    NvimTreeEmptyFolderName = { fg = C.cyan },
    NvimTreeIndentMarker = { fg = C.bright_black },
    NvimTreeWinSeparator = { fg = C.foreground, bg = C.background },
    NvimTreeRootFolder = { fg = C.bright_yellow, bold = O.bold },
    NvimTreeSymlink = { fg = C.blue },
    NvimTreeStatuslineNc = { fg = C.bright_orange, bg = C.background },
    NvimTreeGitDirty = { fg = C.yellow },
    NvimTreeGitNew = { fg = C.cyan },
    NvimTreeGitDeleted = { fg = C.red },
    NvimTreeSpecialFile = { fg = C.blue },
    NvimTreeImageFile = { fg = C.bright_black },
    NvimTreeOpenedFile = { fg = C.yellow },

    -- Alpha
    AlphaShortcut = { fg = C.green },
    AlphaHeader = { fg = C.orange },
    AlphaHeaderLabel = { fg = C.cyan },
    AlphaButtons = { fg = C.yellow },
    AlphaFooter = { fg = C.green },

    -- Whichkey
    WhichKey = { link = "NormalFloat" },
    WhichKeyBorder = { link = "FloatBorder" },
    WhichKeyGroup = { fg = C.bright_cyan },
    WhichKeySeparator = { fg = C.bright_red },
    WhichKeyDesc = { fg = C.yellow },
    WhichKeyValue = { fg = C.green },

    -- Flash
    FlashBackdrop = { fg = C.foreground },
    FlashLabel = { fg = C.yellow, bg = C.background, bold = O.bold },
    FlashMatch = { fg = C.green, bg = C.background },
    FlashCurrent = { fg = C.orange, bg = C.background },

    -- Lazy
    LazyH1 = { fg = C.yellow, bg = C.visual, bold = O.bold },
    LazyButton = { fg = C.foreground, bg = C.visual, bold = O.bold },
    LazyButtonActive = { fg = C.yellow, bg = C.cursor, bold = O.bold },
    LazySpecial = { fg = C.blue, bg = C.background },
  }
end

return M
