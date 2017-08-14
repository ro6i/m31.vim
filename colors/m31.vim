" m31.vim

set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="m31"

function! s:h(group, fg, ...)
  let l:ctermfg = a:fg
  let l:ctermbg = get(a:, 1, "NONE")
  let l:cterm = get(a:, 2, "NONE")
  execute "highlight" a:group
    \ "guifg=NONE"
    \ "guibg=NONE"
    \ "guisp=NONE"
    \ "gui=NONE"
    \ "ctermfg=" . l:ctermfg
    \ "ctermbg=" . l:ctermbg
    \ "cterm=" . l:cterm
endfunction

let s:none = "NONE"
let s:dark = 0
let s:red = 1
let s:green = 2
let s:yellow = 3
let s:blue = 4
let s:purple = 5
let s:cyan = 6
let s:white = 7
let s:_dark = 8
let s:c_red = 9
let s:_green = 10
let s:_yellow = 11
let s:_blue = 12
let s:_purple = 13
let s:_cyan = 14
let s:_white = 15

"}}}

call s:h("Comment", s:dark)
call s:h("Constant", s:cyan)
call s:h("String", s:_yellow)
call s:h("Character", s:green)
call s:h("Number", s:_red)
call s:h("Boolean", s:_red)
call s:h("Float", s:_red)
call s:h("Identifier", s:red)
call s:h("Function", s:blue)
call s:h("Statement", s:purple)
call s:h("Conditional", s:purple)
call s:h("Repeat", s:purple)
call s:h("Label", s:purple)
call s:h("Operator", s:purple)
call s:h("Keyword", s:red)
call s:h("Exception", s:purple)
call s:h("PreProc", s:yellow)
call s:h("Include", s:blue)
call s:h("Define", s:purple)
call s:h("Macro", s:purple)
call s:h("PreCondit", s:yellow)
call s:h("Type", s:yellow)
call s:h("StorageClass", s:yellow)
call s:h("Structure", s:yellow)
call s:h("Typedef", s:yellow)
call s:h("Special", s:blue)
call s:h("SpecialChar", s:none)
call s:h("Tag", s:none)
call s:h("Delimiter", s:none)
call s:h("SpecialComment", s:dark)
call s:h("Debug", s:none)
call s:h("Underlined", s:none, s:none, "underline")
call s:h("Ignore", s:none)
call s:h("Error", s:red)
call s:h("Todo", s:red)

" }}}

" Highlighting Groups (descriptions and ordering from `:h highlight-groups`) {{{

call s:h("Normal", s:white, s:none) " normal text

call s:h("ColorColumn", s:none, s:dark) " used for the columns set with 'colorcolumn'
"call s:h("Conceal", {}) " placeholder characters substituted for concealed text (see 'conceallevel')
call s:h("Cursor", s:dark, s:blue) " the character under the cursor
"call s:h("CursorIM", {}) " like Cursor, but used when in IME mode
call s:h("CursorColumn", s:dark) " the screen column that the cursor is in when 'cursorcolumn' is set
call s:h("CursorLine", s:none, s:dark) " the screen line that the cursor is in when 'cursorline' is set
call s:h("Directory", s:blue) " directory names (and other special names in listings)
call s:h("DiffAdd", s:none, s:green) " diff mode: Added line
call s:h("DiffChange", s:none, s:yellow) " diff mode: Changed line
call s:h("DiffDelete", s:none, s:red) " diff mode: Deleted line
call s:h("DiffText", s:yellow, s:dark) " diff mode: Changed text within a changed line
call s:h("ErrorMsg", s:red) " error messages on the command line
call s:h("VertSplit", s:_dark) " the column separating vertically split windows
call s:h("Folded", s:_dark) " line used for closed folds
"call s:h("FoldColumn", {}) " 'foldcolumn'
"call s:h("SignColumn", {}) " column where signs are displayed
call s:h("IncSearch", s:yellow, s:dark) " 'incsearch' highlighting; also used for the text replaced with ":s///c"
call s:h("LineNr", s:dark) " Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
"call s:h("CursorLineNr", {}) " Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
call s:h("MatchParen", s:blue, "underline") " The character under the cursor or just before it, if it is a paired bracket, and its match.
"call s:h("ModeMsg", {}) " 'showmode' message (e.g., "-- INSERT --")
"call s:h("MoreMsg", {}) " more-prompt
call s:h("NonText", s:_dark) " '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
call s:h("Pmenu", s:none, s:dark) " Popup menu: normal item.
call s:h("PmenuSel", s:dark, s:blue) " Popup menu: selected item.
call s:h("PmenuSbar", s:none, s:dark) " Popup menu: scrollbar.
call s:h("PmenuThumb", s:white) " Popup menu: Thumb of the scrollbar.
call s:h("Question", s:purple) " hit-enter prompt and yes/no questions
call s:h("Search", s:blue) " Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
call s:h("QuickFixLine", s:dark, s:yellow) " Current quickfix item in the quickfix window.
call s:h("SpecialKey", s:dark) " Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
call s:h("SpellBad", s:red, "underline") " Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
call s:h("SpellCap", s:_yellow) " Word that should start with a capital. This will be combined with the highlighting used otherwise.
call s:h("SpellLocal", s:_yellow) " Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
call s:h("SpellRare", s:_yellow) " Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
call s:h("StatusLine", s:white, s:dark)
call s:h("StatusLineNC", s:dark) " status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
call s:h("TabLine", s:dark) " tab pages line, not active tab page label
call s:h("TabLineFill", s:none) " tab pages line, where there are no labels
call s:h("TabLineSel", s:white) " tab pages line, active tab page label
call s:h("Title", s:green) " titles for output from ":set all", ":autocmd" etc.
call s:h("Visual", s:none, s:dark)
call s:h("VisualNOS", s:blue) " Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
call s:h("WarningMsg", s:yellow)
call s:h("WildMenu", s:dark, s:blue)

" }}}

