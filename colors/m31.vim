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
    \ "cterm="   . l:cterm
endfunction


function s:d(...)
  return (get(a:, 1, 0) * 8) + 0
endfunction

function s:r(...)
  return (get(a:, 1, 0) * 8) + 1
endfunction

function s:g(...)
  return (get(a:, 1, 0) * 8) + 2
endfunction

function s:y(...)
  return (get(a:, 1, 0) * 8) + 3
endfunction

function s:b(...)
  return (get(a:, 1, 0) * 8) + 4
endfunction

function s:m(...)
  return (get(a:, 1, 0) * 8) + 5
endfunction

function s:c(...)
  return (get(a:, 1, 0) * 8) + 6
endfunction

function s:w(...)
  return (get(a:, 1, 0) * 8) + 7
endfunction

let s:n= "NONE"

call s:h("Normal",         s:w(), s:n)

call s:h("Boolean",        s:r())
call s:h("Character",      s:g())
call s:h("Comment",        s:d(1), s:n)
call s:h("Conditional",    s:y())
call s:h("Constant",       s:y())
call s:h("Debug",          s:n)
call s:h("Define",         s:m())
call s:h("Delimiter",      s:n)
call s:h("Error",          s:r())
call s:h("Exception",      s:m())
call s:h("Float",          s:b())
call s:h("Function",       s:g())
call s:h("Identifier",     s:w())
call s:h("Ignore",         s:n)
call s:h("Include",        s:c())
call s:h("Keyword",        s:r())
call s:h("Label",          s:w())
call s:h("Macro",          s:m())
call s:h("Normal",         s:w())
call s:h("Number",         s:b())
call s:h("Operator",       s:c())
call s:h("PreCondit",      s:y())
call s:h("PreProc",        s:m())
call s:h("Repeat",         s:m())
call s:h("Special",        s:c())
call s:h("SpecialChar",    s:n)
call s:h("SpecialComment", s:d(1))
call s:h("SpecialKey",     s:d(1))
call s:h("Statement",      s:r())
call s:h("StorageClass",   s:c())
call s:h("String",         s:b())
call s:h("Structure",      s:y())
call s:h("Tag",            s:c())
call s:h("Todo",           s:r(1))
call s:h("Type",           s:y())
call s:h("Typedef",        s:y($THEME_OCTETS < 6 ? 0 : 4))
call s:h("Underlined",     s:n, s:n, "underline")

call s:h("ColorColumn",    s:n, s:d(2))
call s:h("Conceal",        s:n, s:n)
call s:h("Cursor",         s:d(), s:c())
call s:h("CursorColumn",   s:n, s:d(2))
call s:h("CursorLine",     s:n, s:d(2))
call s:h("Directory",      s:c())
call s:h("DiffAdd",        s:n, s:g(2))
call s:h("DiffChange",     s:n, s:y(2))
call s:h("DiffDelete",     s:r(), s:r(2))
call s:h("DiffText",       s:n, s:d())
call s:h("ErrorMsg",       s:r())
"call s:h("VertSplit",      s:w(2), s:d(2))
call s:h("WinSeparator",   s:w(2), s:d(2))
call s:h("Folded",         s:d(1))
"call s:h("FoldColumn",    )
call s:h("SignColumn",     s:n)
call s:h("IncSearch",      s:n)
call s:h("LineNr",         s:w(2))
call s:h("CursorLineNr",   s:w(3))
call s:h("CurSearch",      s:n, s:c(2))
call s:h("MatchParen",     s:w(1), s:d())
call s:h("ModeMsg",        s:y())
call s:h("MoreMsg",        s:r())
call s:h("NonText",        s:d(3))
call s:h("Pmenu",          s:n, s:d())
call s:h("PmenuSel",       s:d(), s:c())
call s:h("PmenuSbar",      s:n, s:d())
call s:h("PmenuThumb",     s:w())
call s:h("Question",       s:m())
call s:h("QuickFixLine",   s:n, s:d())
call s:h("Search",         s:y(1), s:w(2))
call s:h("SpellBad",       s:r(), s:n, "underline")
call s:h("SpellCap",       s:y())
call s:h("SpellLocal",     s:y())
call s:h("SpellRare",      s:y())
call s:h("StatusLine",     s:w(), s:w(3))
call s:h("StatusLineNC",   s:d())
call s:h("TabLine",        s:d())
call s:h("TabLineFill",    s:n)
call s:h("TabLineSel",     s:w())
call s:h("Title",          s:g())
call s:h("Visual",         s:n, s:n, "reverse")
call s:h("VisualNOS",      s:c())
call s:h("WarningMsg",     s:y())
call s:h("WildMenu",       s:d(), s:c())
