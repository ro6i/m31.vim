" m31.vim

set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="m31"

" highlighting function
"
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

" terminal colors
"
let s:dark = 0
let s:red = 1
let s:green = 2
let s:yellow = 3
let s:blue = 4
let s:magenta = 5
let s:cyan = 6
let s:white = 7

let s:_dark = 8
let s:_red = 9
let s:_green = 10
let s:_yellow = 11
let s:_blue = 12
let s:_purple = 13
let s:_cyan = 14
let s:_white = 15

let s:none = "NONE"


call s:h("Comment", s:_white, s:none)
" call s:h("Constant", s:blue)
call s:h("Constant", s:_yellow)
" call s:h("String", s:_yellow)
call s:h("String", s:green)
call s:h("Character", s:green)
call s:h("Number", s:_purple)
call s:h("Boolean", s:_red)
call s:h("Float", s:_red)
call s:h("Normal", s:white)
call s:h("Identifier", s:white)
" call s:h("Function", s:yellow)
call s:h("Function", s:blue)
call s:h("Statement", s:_red)
call s:h("Conditional", s:_red)
call s:h("Repeat", s:magenta)
call s:h("Label", s:magenta)
call s:h("Operator", s:yellow)
call s:h("Keyword", s:_red)
call s:h("Exception", s:_purple)
call s:h("PreProc", s:_blue)
call s:h("Include", s:_blue)
call s:h("Define", s:magenta)
call s:h("Macro", s:_blue)
call s:h("PreCondit", s:yellow)
" call s:h("Type", s:green)
call s:h("Type", s:yellow)
call s:h("StorageClass", s:_purple)
call s:h("Structure", s:yellow)
call s:h("Typedef", s:yellow)
call s:h("Special", s:blue)
call s:h("SpecialChar", s:none)
call s:h("Tag", s:none)
call s:h("Delimiter", s:none)
call s:h("SpecialComment", s:_white)
call s:h("Debug", s:none)
call s:h("Underlined", s:none, s:none, "underline")
call s:h("Ignore", s:none)
call s:h("Error", s:red)
call s:h("Todo", s:red)

call s:h("Normal", s:white, s:none)

call s:h("ColorColumn", s:none, s:_dark)
"call s:h("Conceal", {})
call s:h("Cursor", s:_dark, s:blue)
"call s:h("CursorIM", {}) " like Cursor, but used when in IME mode
call s:h("CursorColumn", s:_dark)
call s:h("CursorLine", s:none, s:dark)
call s:h("Directory", s:blue)
call s:h("DiffAdd", s:dark, s:green)
call s:h("DiffChange", s:dark, s:yellow)
call s:h("DiffDelete", s:dark, s:red)
call s:h("DiffText", s:none, s:dark)
call s:h("ErrorMsg", s:red)
call s:h("VertSplit", s:_dark)
call s:h("Folded", s:_white)
"call s:h("FoldColumn", {})
call s:h("SignColumn", s:none, s:none)
call s:h("IncSearch", s:yellow, s:dark)
call s:h("LineNr", s:_dark)
call s:h("CursorLineNr", s:_white)
call s:h("MatchParen", s:_white, s:none, "underline,italic,bold")
"call s:h("ModeMsg", {})
"call s:h("MoreMsg", {})
call s:h("NonText", s:_white)
call s:h("Pmenu", s:none, s:dark)
call s:h("PmenuSel", s:dark, s:blue)
call s:h("PmenuSbar", s:none, s:dark)
call s:h("PmenuThumb", s:white)
call s:h("Question", s:magenta)
call s:h("Search", s:white, s:_dark)
call s:h("QuickFixLine", s:none, s:dark)
call s:h("SpecialKey", s:_white)
call s:h("SpellBad", s:red, s:none, "underline")
call s:h("SpellCap", s:_yellow)
call s:h("SpellLocal", s:_yellow)
call s:h("SpellRare", s:_yellow)
call s:h("StatusLine", s:white, s:_dark)
call s:h("StatusLineNC", s:dark)
call s:h("TabLine", s:dark)
call s:h("TabLineFill", s:none)
call s:h("TabLineSel", s:white)
call s:h("Title", s:green)
call s:h("Visual", s:none, s:_dark) ", "reverse")
call s:h("VisualNOS", s:blue)
call s:h("WarningMsg", s:yellow)
call s:h("WildMenu", s:dark, s:blue)
