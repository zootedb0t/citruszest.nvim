return function(C, O)
  return {
    ColorColumn = { bg = C.none }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = C.blue }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = C.cursor, bg = C.white }, -- character under the cursor
    lCursor = { fg = C.cursor, bg = C.white }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = C.cursor, bg = C.white }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { bg = C.bright_black }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = C.cursor }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if forecrust (ctermfg OR guifg) is not set.
    Directory = { fg = C.bright_orange }, -- directory names (and other special names in listings)
    EndOfBuffer = { fg = C.background }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg = { fg = C.red }, -- error messages on the command line
    WinSeparator = { fg = C.baby_blue }, -- separating vertical or horizontal split windows
    Folded = { fg = C.orange, bg = C.background }, -- line used for closed folds
    FoldColumn = { fg = C.orange, bg = C.background }, -- 'foldcolumn'
    SignColumn = { fg = C.foreground, bg = C.background }, -- column where |signs| are displayed
    SignColumnSB = { fg = C.foreground, bg = C.background }, -- column where |signs| are displayed
    Substitute = { fg = C.black, bg = C.baby_blue }, -- |:substitute| replacement text highlighting
    LineNr = { fg = C.bright_black }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = C.bright_yellow, bold = O.bold }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
    MatchParen = { bold = O.bold }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = C.white }, -- 'showmode' message (e.g., "-- INSERT --")
    MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = C.cyan }, -- |more-prompt|
    NonText = { fg = C.bright_cyan }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = C.foreground, bg = C.background }, -- normal text
    NormalNC = { fg = C.foreground, bg = C.background }, -- normal text in non-current windows
    NormalSB = { fg = C.foreground }, -- normal text in non-current windows
    NormalFloat = { bg = C.background }, -- Normal text in floating windows.
    FloatBorder = { fg = C.blue },
    FloatTitle = { fg = C.yellow }, -- Title of floating windows
    Pmenu = { fg = C.bright_white, bg = C.background }, -- Popup menu: normal item.
    PmenuSel = { fg = C.orange, bg = C.cursor, bold = O.bold }, -- Popup menu: selected item.
    PmenuSbar = { bg = C.white }, -- Popup menu: scrollbar.
    PmenuThumb = { bg = C.orange }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = C.cyan }, -- |hit-enter| prompt and yes/no questions
    Search = { fg = C.black, bg = C.aurora }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { fg = C.black, bg = C.baby_blue }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { fg = C.black, bg = C.baby_blue }, -- 'cursearch' highlighting: highlights the current search you're on differently
    SpecialKey = { fg = C.orange }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
    SpellBad = { sp = C.red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = C.yellow, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = C.cyan, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = C.green, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { bg = C.visual, fg = C.foreground }, -- status line of current window
    StatusLineNC = { bg = C.background }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { fg = C.white, bg = C.visual }, -- tab pages line, not active tab page label
    TabLineFill = {}, -- tab pages line, where there are no labels
    TabLineSel = { fg = C.green, bg = C.visual }, -- tab pages line, active tab page label
    Title = { fg = C.bright_green, bold = O.bold }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = C.visual, bold = O.bold }, -- Visual mode selection
    VisualNOS = { bg = C.bright_black, bold = O.bold }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = C.bright_red }, -- warning messages
    Whitespace = { fg = C.white }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { fg = C.foreground, bg = C.background }, -- current match in 'wildmenu' completion
    WinBar = { fg = C.bright_white },
    WinBarNC = { fg = C.bright_black, bg = C.background }, --Window bar of not-current windows.
    Comment = { fg = C.comment }, -- just comments
    SpecialComment = { link = "Special" }, -- special things inside a comment
    Constant = { fg = C.aurora }, -- (preferred) any constant
    String = { fg = C.dark_lemon_yellow }, -- a string constant: "this is a string"
    Character = { fg = C.yellow }, --  a character constant: 'c', '\n'
    Number = { fg = C.lemon_yellow }, --   a number constant: 234, 0xff
    Float = { link = "Number" }, --    a floating point constant: 2.3e10
    Boolean = { fg = C.bright_orange }, --  a boolean constant: TRUE, false
    Identifier = { fg = C.bright_yellow, italic = O.italic }, -- (preferred) any variable name
    Function = { fg = C.lime_green }, -- function name (also: methods for classes)
    Statement = { fg = C.blue }, -- (preferred) any statement
    Conditional = { fg = C.bright_cyan }, --  if, then, else, endif, switch, etc.
    Repeat = { fg = C.bright_yellow }, --   for, do, while, etc.
    Label = { fg = C.bright_green }, --    case, default, etc.
    Operator = { fg = C.orange }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = C.lemon_yellow }, --  any other keyword
    Array = { fg = C.blue },
    Exception = { fg = C.blue }, --  try, catch, throw

    PreProc = { fg = C.bright_green }, -- (preferred) generic Preprocessor
    Include = { fg = C.lemon_yellow }, --  preprocessor #include
    Define = { link = "PreProc" }, -- preprocessor #define
    Macro = { fg = C.violet }, -- same as Define
    PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

    StorageClass = { fg = C.yellow }, -- static, register, volatile, etc.
    Structure = { link = "Keyword" }, --  struct, union, enum, etc.
    Special = { fg = C.orange }, -- (preferred) any special symbol
    Type = { fg = C.bright_orange }, -- (preferred) int, long, char, etc.
    Typedef = { link = "Type" }, --  A typedef
    SpecialChar = { link = "Special" }, -- special character in a constant
    Tag = { link = "Special" }, -- you can use CTRL-] on this
    Delimiter = { link = "Special" }, -- character that needs attention
    Debug = { fg = C.orange }, -- debugging statements

    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
    Bold = { bold = true },
    Italic = { italic = true },

    Error = { fg = C.red }, -- (preferred) any erroneous construct
    Todo = { fg = C.black, bg = C.yellow }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    htmlH1 = { fg = C.blue, bold = O.bold },
    htmlH2 = { fg = C.cyan, bold = O.bold },
    mkdCodeDelimiter = { bg = C.background, fg = C.white },
    mkdCodeStart = { fg = C.bright_cyan, bold = O.bold },
    mkdCodeEnd = { fg = C.cyan, bold = O.bold },

    -- NeoVim
    healthError = { fg = C.red },
    healthSuccess = { fg = C.green },
    healthWarning = { fg = C.yellow },

    -- Punctuation
    ["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters ie: .
    ["@punctuation.bracket"] = { fg = C.orange }, -- For brackets and parenthesis.
    ["@punctuation.special"] = { link = "Special" }, -- For special punctutation that does not fall in the categories before.

    ["@module"] = { fg = C.yellow, italic = O.italic }, -- For identifiers referring to modules and namespaces.
    ["@module.builtin"] = { link = "@module" },
    ["@label"] = { fg = C.bright_orange },
    ["@macro"] = { link = "Macro" },

    -- Literals
    ["@string"] = { link = "String" }, -- For strings.
    ["@string.regexp"] = { fg = C.bright_orange }, -- For regexes.
    ["@string.escape"] = { fg = C.bright_red }, -- For escape characters within a string.
    ["@string.special"] = { link = "Special" }, -- other special strings (e.g. dates)
    ["@string.special.symbol"] = { fg = C.yellow },
    ["@string.special.path"] = { fg = C.aurora },
    ["string.special.url"] = { fg = C.aurora, underline = true }, -- urls, links and emails

    ["@character"] = { link = "Character" }, -- character literals
    ["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)

    ["@boolean"] = { link = "Boolean" }, -- For booleans.
    ["@number"] = { link = "Number" }, -- For all numbers
    ["@number.float"] = { link = "Float" }, -- For floats.

    -- Functions
    ["@function"] = { link = "Function" }, -- For function (calls and definitions).
    ["@function.builtin"] = { link = "Function" }, -- For builtin functions: table.insert in Lua.
    ["@function.call"] = { link = "Function" }, -- function calls
    ["@function.macro"] = { fg = C.violet }, -- For macro defined functions (calls and definitions): each macro_rules in RusC.
    ["@function.method"] = { link = "Function" }, -- For method calls and definitions.
    ["@function.method.call"] = { link = "Function" }, -- method calls
    ["@constructor"] = { fg = C.bright_yellow }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
    ["@operator"] = { link = "Operator" }, -- For any operator: +, but also -> and * in C.

    -- Keywords
    ["@keyword"] = { link = "Keyword" }, -- For keywords that don't fall in previous categories.
    ["@keyword.coroutine"] = { fg = C.lemon_yellow }, -- for key words like `async`
    ["@keyword.function"] = { fg = C.lemon_yellow }, -- For keywords used to define a function.
    ["@keyword.operator"] = { link = "Operator" }, -- For new keyword operator.
    ["@keyword.return"] = { fg = C.bright_yellow },
    ["@keyword.import"] = { link = "Include" }, -- For includes.
    ["@keyword.storage"] = { link = "StorageClass" }, -- visibility/life-time/etc. modifiers (e.g. `static`).
    ["@keyword.repeat"] = { link = "Repeat" }, -- For keywords related to loop.
    ["@keyword.exception"] = { link = "Exception" }, -- For exception keywords.
    ["@keyword.conditional"] = { link = "Conditional" }, -- For keywords related to conditional,
    ["@keyword.conditional.ternary"] = { fg = C.bright_yellow }, -- e.g. ? or :
    ["@keyword.directive"] = { link = "PreProc" }, -- Various preprocessor directive & shebangs.
    ["@keyword.directive.define"] = { link = "Define" }, -- Preprocessor definition directive.
    ["@keyword.debug"] = { link = "Debug" },

    -- JS & derivative
    ["@keyword.export"] = { fg = C.bright_cyan },
    ["@lsp.typemod.function.defaultLibrary.javascript"] = { fg = C.bright_green },

    -- Types
    ["@type"] = { link = "Type" }, -- For types.
    ["@type.builtin"] = { link = "@type", italic = O.italic }, -- For builtin types.
    ["@type.definition"] = { link = "@type" }, -- type definitions (e.g. `typedef` in C)
    ["@type.qualifier"] = { link = "Constant" }, -- type qualifiers (e.g. `const`)

    ["@attribute"] = { link = "Constant" }, -- attribute annotations (e.g. Python decorators)
    ["@property"] = { fg = C.bright_cyan }, -- Same as TSField.

    -- Identifiers
    ["@variable"] = { fg = C.very_bright_green }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"] = { link = "Identifier" }, -- Variable names that are defined by the languages, like this or self.
    ["@variable.parameter"] = { fg = C.bright_green, italic = O.italic }, -- For parameters of a function.
    ["@parameter"] = { fg = C.bright_green, italic = O.italic }, -- For the variables inside a function that are parameters of the function
    ["@variable.member"] = { fg = C.bright_cyan }, -- For fields

    ["@constant"] = { link = "Constant" }, -- For constants
    ["@constant.builtin"] = { link = "Constant" }, -- For constant that are built in the language: nil in Lua.
    ["@constant.macro"] = { link = "Macro" }, -- For constants that are defined by macros: NULL in C.

    -- Markup
    ["@markup"] = { fg = C.bright_white }, -- For strings considerated text in a markup language.
    ["@markup.strong"] = { fg = C.white, bold = true },
    ["@markup.italic"] = { fg = C.white, italic = O.italic },
    ["@markup.strikethrough"] = { fg = C.white, strikethrough = true },
    ["@markup.underline"] = { link = "Underline" },
    ["@markup.heading"] = { fg = C.blue, bold = O.bold }, -- titles like: # Example.
    ["@markup.math"] = { fg = C.blue },
    ["@markup.environment"] = { fg = C.bright_orange }, -- Text indicating the type of an environment.
    ["@markup.link"] = { link = "Tag" },
    ["@markup.link.label"] = { fg = C.cyan, underline = true },
    ["@markup.link.url"] = { fg = C.bright_orange, underline = true },
    ["@markup.raw"] = { fg = C.lemon_yellow }, -- used for inline code in markdown and for doc in python.
    ["@markup.raw.block"] = { fg = C.baby_blue }, -- used for inline code in markdown and for doc in python.
    ["@markup.list"] = { link = "Special" },
    ["@markup.list.checked"] = { fg = C.green },
    ["@markup.list.unchecked"] = { fg = C.white },

    -- Misc
    ["@error"] = { link = "Error" },

    -- Tags
    ["@tag"] = { fg = C.blue }, -- Tags like html tag names.
    ["@tag.attribute"] = { fg = C.yellow, italic = O.italic }, -- Tags like html tag names.
    ["@tag.delimiter"] = { fg = C.red }, -- Tag delimiter like < > /

    -- Language specific:
    -- Markdown
    ["@markup.heading.1.markdown"] = { link = "rainbow1" },
    ["@markup.heading.2.markdown"] = { link = "rainbow2" },
    ["@markup.heading.3.markdown"] = { link = "rainbow3" },
    ["@markup.heading.4.markdown"] = { link = "rainbow4" },
    ["@markup.heading.5.markdown"] = { link = "rainbow5" },
    ["@markup.heading.6.markdown"] = { link = "rainbow6" },

    -- Css
    ["@property.css"] = { fg = C.bright_orange },
    ["@property.id.css"] = { fg = C.cyan },
    ["@property.class.css"] = { fg = C.yellow },
    ["@type.css"] = { fg = C.blue },
    ["@type.tag.css"] = { fg = C.bright_orange },
    ["@string.plain.css"] = { fg = C.yellow },
    ["@number.css"] = { fg = C.yellow },

    -- Toml
    ["@property.toml"] = { fg = C.cyan }, -- Differentiates between string and properties

    -- Json
    ["@label.json"] = { fg = C.bright_green }, -- For labels: label: in C and :label: in Lua.

    -- Lua
    ["@constructor.lua"] = { fg = C.orange }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
    ["@lsp.typemod.function.defaultLibrary.lua"] = { fg = C.blue },

    -- Typescript
    ["@constructor.typescript"] = { fg = C.bright_green },

    -- TSX (Typescript React)
    ["@constructor.tsx"] = { fg = C.bright_green },
    ["@tag.attribute.tsx"] = { fg = C.bright_yellow, italic = O.italic },

    -- Cpp
    ["@property.cpp"] = { fg = C.bright_orange },

    -- Yaml
    ["@variable.member.yaml"] = { fg = C.bright_blue }, -- For fields.

    -- Ruby
    ["@string.special.symbol.ruby"] = { fg = C.bright_yellow },

    -- Php
    ["@function.method.php"] = { link = "Function" },
    ["@function.method.call.php"] = { link = "Function" },

    -- Python
    ["@string.documentation.python"] = { fg = C.baby_blue },

    -- Haskell
    ["@operator.haskell"] = { fg = C.bright_yellow },
  }
end
