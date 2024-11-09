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
  }
end
