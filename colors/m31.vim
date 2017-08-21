" m31.vim

set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="m31"

" highlighting function {{{
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

" }}}

" terminal colors {{{
"
let s:dark = 0
let s:red = 1
let s:green = 2
let s:yellow = 3
let s:blue = 4
let s:purple = 5
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

" }}}

call s:h("Comment", s:_dark)
call s:h("Constant", s:cyan)
call s:h("String", s:_yellow)
call s:h("Character", s:green)
call s:h("Number", s:_red)
call s:h("Boolean", s:_red)
call s:h("Float", s:_red)
call s:h("Identifier", s:red)
call s:h("Function", s:purple)
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
call s:h("Type", s:green)
call s:h("StorageClass", s:yellow)
call s:h("Structure", s:yellow)
call s:h("Typedef", s:yellow)
call s:h("Special", s:blue)
call s:h("SpecialChar", s:none)
call s:h("Tag", s:none)
call s:h("Delimiter", s:none)
call s:h("SpecialComment", s:_dark)
call s:h("Debug", s:none)
call s:h("Underlined", s:none, s:none, "underline")
call s:h("Ignore", s:none)
call s:h("Error", s:red)
call s:h("Todo", s:red)

call s:h("Normal", s:white, s:none)

call s:h("ColorColumn", s:none, s:dark)
"call s:h("Conceal", {})
call s:h("Cursor", s:dark, s:blue)
"call s:h("CursorIM", {}) " like Cursor, but used when in IME mode
call s:h("CursorColumn", s:dark)
call s:h("CursorLine", s:none, s:none)
call s:h("Directory", s:blue)
call s:h("DiffAdd", s:none, s:green)
call s:h("DiffChange", s:none, s:yellow)
call s:h("DiffDelete", s:none, s:red)
call s:h("DiffText", s:yellow, s:dark)
call s:h("ErrorMsg", s:red)
call s:h("VertSplit", s:dark)
call s:h("Folded", s:_dark)
"call s:h("FoldColumn", {})
"call s:h("SignColumn", {})
call s:h("IncSearch", s:yellow, s:dark)
call s:h("LineNr", s:_dark)
call s:h("CursorLineNr", s:white)
call s:h("MatchParen", s:_white, s:none, "underline")
"call s:h("ModeMsg", {})
"call s:h("MoreMsg", {})
call s:h("NonText", s:_dark)
call s:h("Pmenu", s:none, s:dark)
call s:h("PmenuSel", s:dark, s:blue)
call s:h("PmenuSbar", s:none, s:dark)
call s:h("PmenuThumb", s:white)
call s:h("Question", s:purple)
call s:h("Search", s:_cyan, s:none, "underline")
call s:h("QuickFixLine", s:dark, s:yellow)
call s:h("SpecialKey", s:dark)
call s:h("SpellBad", s:red, s:none, "underline")
call s:h("SpellCap", s:_yellow)
call s:h("SpellLocal", s:_yellow)
call s:h("SpellRare", s:_yellow)
call s:h("StatusLine", s:white, s:dark)
call s:h("StatusLineNC", s:dark)
call s:h("TabLine", s:dark)
call s:h("TabLineFill", s:none)
call s:h("TabLineSel", s:white)
call s:h("Title", s:green)
call s:h("Visual", s:none, s:dark)
call s:h("VisualNOS", s:blue)
call s:h("WarningMsg", s:yellow)
call s:h("WildMenu", s:dark, s:blue)

" }}}
